<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Auth;
use Illuminate\Support\Facades\Auth;
use App\Model\Doctor;
use App\Model\Department;
use App\Model\TimeTable;
use App\Model\Appointment;
use App\Model\DepartService;
use App\Model\Token;
use App\Model\Review;
use Illuminate\Support\Str;
use App\Model\Service;
use App\Model\Setting;
use App\Model\Package;
use App\Model\Album;
use App\Model\ContactUs;
use App\Model\Subscription;
use App\Model\NewsLetter;

use App\Model\About;
use App\Model\News;
use App\Model\NewsCategories;
use Twilio\Rest\Client;
use App\Model\Resetpassword;
use Kreait\Firebase;
use Kreait\Firebase\Factory;
use Kreait\Firebase\ServiceAccount;
use Kreait\Firebase\Database;
use App\User;
use Illuminate\Support\Facades\Route;
// use Session;
use Illuminate\Support\Facades\Session;
use DateTime;
use DateTimeZone;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Mail;
// use Mail;
use validate;
class FrontController extends Controller
{
       public function __construct(){
          $setting = Setting::find(1);
          Session::put("main_color","#e7d045");
          Session::put("text_color","#05464e");
          Session::put("headingtext_color","#05464e");
          Session::put("lowbackground_box_color","#ededc2");
          Session::put("slider_color","#f1f5ff");
          Session::put("main_banner",asset('public/upload/web').'/'.$setting->main_banner);
       }
        public function showhome(){
            if(!isset($_COOKIE['fload'])){
                //setcookie('fload','1', time() + (86400 * 30), "/");
            }
            $cache_key = Route::currentRouteName();
            if ( Cache::has($cache_key) ) {
                return Cache::get($cache_key);
            } else {
                $seo = (object) array(
                    'seo_title' => ' Home '.'|'.' Aahad Hospital',
                    'seo_description' => 'Some description',
                    'seo_other' => '',
                    'seo_type'=>'website',
                    'image' =>'https://dev.aahadhospital.com/assets/images/favicon.png'
                );
                $service=Service::get()->take(6);
                $doctor=Doctor::get()->take(4);
                $cachedData = view('front.home')->with([
                    'seo'=>$seo,
                    'services'=>$service,
                    'doctors'=>$doctor,
                ])->render();
                Cache::put($cache_key, $cachedData, 604800);
                return $cachedData;
            }
        }

       public function getserviceanddoctor($department_id){
           $departmentservice=DepartService::where("department_id",$department_id)->get();
           $doctorlist=Doctor::where("department_id",$department_id)->get();
           $data=array("service"=>$departmentservice,"doctor"=>$doctorlist);
           return json_encode($data);
       }

      public function sendNotification(Request $request)
    {
        $setting =Setting::find(1);
        $api_key = $setting->web_key;
        $data = [
            "registration_ids" => array($request->get("token")),
            "notification" => [
                "title" => $request->get("sender_name"),
                "body" =>substr($request->get('message'),0,75),
                "icon"=>$request->get('image')
            ]
        ];
        $dataString = json_encode($data);

        $headers = [
            'Authorization: key=' . $api_key,
            'Content-Type: application/json',
        ];

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);

        $response = curl_exec($ch);
        $date = new DateTime("now", new DateTimeZone('Asia/Kolkata') );
        $date->setTimeZone(new DateTimeZone('UTC'));
        return $date->format('Y-m-d H:i:s.u');

    }

       public function allfacilites(){
           $service=Service::all();
           $department=Department::all();
           $setting=Setting::find(1);
           return view("front.facilites")->with("department",$department)->with("facilites",$service)->with("setting",$setting);
       }

        public function department(){

            $cache_key =  'dep';
            if ( Cache::has($cache_key) ) {
                return Cache::get($cache_key);
            } else {
                $departments=Department::paginate(10);
                $cachedData = view("front.department")->with('departments', $departments)->render();
                Cache::put($cache_key, $cachedData, 604800);
                return $cachedData;
            }
        }

        public function contact_us(){

            $cache_key = Route::currentRouteName();
            if ( Cache::has($cache_key) ) {
                return Cache::get($cache_key);
            } else {
                $cachedData = view('front.contactus')->render();
                Cache::put($cache_key, $cachedData, 604800);
                return $cachedData;
            }

        }

       public function myaccount(){
         if(Auth::id()&&isset(Auth::user()->usertype)&&Auth::user()->usertype=='1'){
           $department=Department::all();
           $subscription=Subscription::with('packagedata')->where("user_id",Auth::id())->get();
           $future=Appointment::with("doctors","services","department")->where("user_id",Auth::id())->where("date",">=",date('Y-m-d'))->get()->take(15);
           foreach ($future as $k) {
              if($k->doctors){
                $getuser=Doctor::where("user_id",$k->doc_id)->first();
                if($getuser){
                 $k->doctors->image=$getuser->image;
                }else{
                  $k->doctors->image="";
                }
              }
           }
           $past=Appointment::with("doctors","services","department")->where("user_id",Auth::id())->where("date","<=",date('Y-m-d'))->get()->take(15);
           foreach ($past as $k) {
              if($k->doctors){
                $getuser=Doctor::where("user_id",$k->doc_id)->first();
                if($getuser){
                 $k->doctors->image=$getuser->image;
                }else{
                  $k->doctors->image="";
                }
              }
           }
            $setting=Setting::find(1);
            return view("front.myaccount")->with("department",$department)->with("upcomming",$future)->with("past",$past)->with("subscription",$subscription)->with("setting",$setting);
         }else{
            return redirect("/");
         }
       }

       public function updateprofile(Request $request){
         $img_url=Auth::user()->profile_pic;
                if ($request->hasFile('image'))
                  {
                     $file = $request->file('image');
                     $filename = $file->getClientOriginalName();
                     $extension = $file->getClientOriginalExtension() ?: 'png';
                     $folderName = '/upload/profile';
                     $picture = 'profile_'.mt_rand(100000,999999). '.' . $extension;
                     $destinationPath = public_path() . $folderName;
                     $request->file('image')->move($destinationPath, $picture);
                     $img_url = $picture;
                 }
          $user=User::find(Auth::id());
          $user->name=$request->get("name");
          $user->phone_no=$request->get("phone_no");
          $user->profile_pic=$img_url;
          $user->save();
          $img="";
          Session::put("profile_pic",asset("public/upload/profile/").'/'.$img_url);
          Session::flash('message',__('messages.Profile Update Successfully'));
          Session::flash('alert-class', 'alert-success');
          return redirect()->back();
       }

       public function checkcurrentpwd(Request $request){
          if(Auth::user()->password==$request->get("pwd")){
              return 1;
          }else{
              return 0;
          }
       }


       public function changepasswords(Request $request){
          $store=User::find(Auth::id());
          $store->password=$request->get("npwd");
          $store->save();
           Session::flash('message',__('messages.Password Change Successfully'));
            Session::flash('alert-class', 'alert-success');
            return redirect()->back();
       }

            public function doctordetails($slug){

                $key=Doctor::where('slug',$slug)->first();
                $cache_key=$slug.$key->user_id;
                $d_detail= Cache::remember($cache_key, 604800 , function () use ($slug) {
                    return $d_detail= Doctor::where('slug',$slug)->first();
                });

                $id= Cache::remember('id'.$cache_key, 604800 , function() use ($d_detail) {
                    return $d_detail->user_id;
                });

                $doctor= Cache::remember('doc'.$cache_key, 604800 , function () use ($id) {
                    return Doctor::with('department',"TimeTabledata")->where("user_id",$id)->first();
                });

                if(!$doctor) {
                    return redirect('/');
                }

                $doctor_list= Cache::remember('doctor_list'.$cache_key, 604800 , function() use ($doctor) {
                    return Doctor::where('department_id',$doctor->department_id)->get()->take(8);
                });

                return view('front.doctordetails')->with([
                    'doctor_list'=>$doctor_list,
                    'doctor'=>$doctor,
                    'id'=>$id
                ]);

        }

        public function departmentdetail($slug){

            $cache_key=Route::currentRouteName().$slug;
            $departmentdetails= Cache::remember($cache_key, 604800 , function() use ($slug) {
                return Department::with("doctor","service")->where('slug',$slug)->first();
            });
                if($departmentdetails){
                    return view('front.departmentdetails')->with([
                        'departmentdetails'=>$departmentdetails
                    ])->render();

                }else{
                    return redirect('/');
                }

    }

        public function doctorlist(){

            $cache_key = Route::currentRouteName();
            if ( Cache::has($cache_key) ) {
                return Cache::get($cache_key);
            } else {
                $doctor=Doctor::paginate(10);
                $departmentdoctor=Department::with('doctor')->get();
                $reviews=Review::with('doctors','users')->get()->take(4);
                $cachedData = view('front.doctorlist')->with([
                    'doctor'=>$doctor,
                    'departmentdoctor'=>$departmentdoctor,
                    'reviews'=>$reviews
                ])->render();
                Cache::put($cache_key, $cachedData, 604800);
                return $cachedData;
            }
        }

       public function gallery(){
           $department=Department::all();
           $albumlist=Album::with("gallerydata")->get();
           $setting=Setting::find(1);
           return view("front.gallery")->with("department",$department)->with("albumlist",$albumlist)->with("setting",$setting);
       }

       public function savecontact(Request $request){
          $store=new ContactUs();
          $store->name=$request->get("name");
          $store->email=$request->get("email");
        //   $store->topic=$request->get("topic");
          $store->phone=$request->get("phone");
          $store->message=$request->get("message");
          $store->save();
          Session::flash('message',__('messages.We, Will try to connect with you very soon'));
          Session::flash('alert-class', 'alert-success');
          return redirect()->back();
       }

       public function addreview(Request $request){
                $data=new Review();
                $data->doctor_id=$request->get("doctor_id");
                $data->user_id=Auth::id();
                $data->review=$request->get("messages");
                $data->ratting=$request->get("rating");
                $data->save();
                Session::flash('message',__('messages.Review Add Successfully'));
          Session::flash('alert-class', 'alert-success');
          return redirect()->back();
       }


       public function savesubscribe($email){
          $store=new NewsLetter();
          $store->email=$email;
          $store->save();
          return "done";
       }

       public function pricing(){
           $department=Department::all();

           $pricing=Package::all();
            $setting=Setting::find(1);
           return view("front.pricing")->with("department",$department)->with("pricing",$pricing)->with("setting",$setting);
       }

        public function termcondition(){

            $cache_key = Route::currentRouteName();
            if ( Cache::has($cache_key) ) {
                return Cache::get($cache_key);
            } else {
                $cachedData = view('front.termcondition')->render();
                Cache::put($cache_key, $cachedData, 604800);
                return $cachedData;
            }
        }

        public function privacypolicy(){
            $cache_key = Route::currentRouteName();
            if ( Cache::has($cache_key) ) {
                return Cache::get($cache_key);
            } else {
                $cachedData = view('front.privacypolicy')->render();
                Cache::put($cache_key, $cachedData, 604800);
                return $cachedData;
            }
        }

       public function postregister(Request $request){
           $getemail=User::where("email",$request->get("email"))->first();
           if($getemail){
              $data = array("status"=>'0',"data"=>__("messages.Email Id Already Existe"));
              return json_encode($data);
           }else{

               $store=new User();
               $store->name=$request->get("name");
               $store->email=$request->get("email");
               $store->phone_no=$request->get("phone");
               $store->login_type=1;
               $store->usertype=1;
               $store->password=$request->get("password");
               $store->save();
               Auth::login($store, true);
               Session::put("profile_pic",asset("public/upload/profile/profile.png"));
               $store->profile_pic = "profile/profile.png";
               $data = array("status"=>'1',"data"=>$store);
               return json_encode($data);
           }
       }

       public function postlogin(Request $request){
            $checkuser=User::where("email",$request->get("email"))->where("password",$request->get("password"))->where("usertype",'1')->first();
            if($checkuser){
              Auth::login($checkuser, true);
              if($request->get("rem_me")==1){
                    setcookie('email', $request->get("email"), time() + (86400 * 30), "/");
                    setcookie('password',$request->get("password"), time() + (86400 * 30), "/");
                    setcookie('rem_me',1, time() + (86400 * 30), "/");

               }
                 if($checkuser->profile_pic!=""){
                       Session::put("profile_pic",asset("public/upload/profile").'/'.$checkuser->profile_pic);
                       $image="profile/".$checkuser->profile_pic;
                 }
                 else{
                       Session::put("profile_pic",asset("public/upload/profile/profile.png"));
                       $image="profile/profile.png";
                       $checkuser->profile_pic = "profile/profile.png";
                 }
              $data = array("status"=>'1',"data"=>$checkuser);
              return json_encode($data);

        }else{
              $data = array("status"=>'0',"data"=>__('messages.Login credentials are wrong'));
              return json_encode($data);
        }
    }

       public function userlogin(Request $request){
          $checkuser=User::where("email",$request->get("email"))->where("password",$request->get("password"))->where("usertype",'1')->first();
            if($checkuser){
              Auth::login($checkuser, true);
              if($request->get("rem_me")==1){
                    setcookie('email', $request->get("email"), time() + (86400 * 30), "/");
                    setcookie('password',$request->get("password"), time() + (86400 * 30), "/");
                    setcookie('rem_me',1, time() + (86400 * 30), "/");

               }
               if($checkuser->profile_pic!=""){
                       Session::put("profile_pic",asset("public/upload/profile").'/'.$checkuser->profile_pic);
                       $image="profile/".$checkuser->profile_pic;
                 }
                 else{
                       Session::put("profile_pic",asset("public/upload/profile/profile.png"));
                       $image="profile/profile.png";
                       $checkuser->profile_pic = "profile/profile.png";
                 }


              return redirect()->back();

        }else{
                Session::flash('message',__('messages.Login credentials are wrong'));
                Session::flash('alert-class', 'alert-danger');
                return redirect()->back();
        }
       }

       public function userlogout(){
           Auth::logout();
           return redirect('/');
       }

       public function bookappoinment(Request $request){
                       $data=new Appointment();
                       $data->department_id=$request->get("department");
                       $data->service_id=$request->get("service");
                       $data->doc_id=$request->get("doctors");
                       $data->name=$request->get("name");
                       $data->phone_no=$request->get("phone_no");
                       $data->user_id=Auth::id();
                       $data->date=$request->get("app_date");
                       $data->time=$request->get("app_time");
                       $data->messages=$request->get("messages");
                       $data->status=1;
                       $data->save();
                        Session::flash('message',__('messages.Appointement Book Successfully'));
                        Session::flash('alert-class', 'alert-success');
                        return redirect()->back();
       }

       public function postforgot(Request $request){
           $checkmobile=User::where("email",$request->get("email"))->first();

         if(!empty($checkmobile)){

             $code=mt_rand(100000, 999999);
             $store=array();
             if(!isset($checkmobile->email)){
                 return 0;
             }
             $store['email']=$checkmobile->email;
             $store['name']=$checkmobile->name;
             $store['code']=$code;
             $add=new Resetpassword();
             $add->user_id=$checkmobile->id;
             $add->code=$code;
             $add->save();
              try {
                     Mail::send('email.forgotpassword', ['user' => $store], function($message) use ($store){
                      $message->to($store['email'],$store['name'])->subject(__("messages.Forgot Password"));
                    });
              } catch (\Exception $e) {
              }

            return 1;
         }
         else{
            return 0;
         }
       }
        public function resetpwd($code){
           $data=Resetpassword::where("code",$code)->get();
           $setting=Setting::find(1);
           if(count($data)!=0){
               return view('resetpwd')->with("id",$data[0]->user_id)->with("code",$code)->with("setting",$setting);
           }
           else{
              return view('resetpwd')->with("msg",__('messages.code_ex'))->with("setting",$setting);
           }
       }

       public function resetpassword(Request $request){
          if($request->get('id')==""){
              return view('resetpwd')->with("msg",__('messages.pwd_success'));
          }
          else{
            $user=User::find($request->get('id'));
           $user->password=$request->get('npwd');
           $user->save();
           $setting=Setting::find(1);
           $codedel=Resetpassword::where('user_id',$request->get("id"))->delete();
           return view('resetpwd')->with("msg",__('messages.pwd_success'))->with("setting",$setting);
          }

       }


    public function show_chat_area($id){
        if(Auth::id()){
            $department=Department::all();
            $timezone_name = timezone_name_from_abbr("", 330*60, false);
            $date = new DateTime("now", new DateTimeZone('Asia/Kolkata') );
            $date->setTimeZone(new DateTimeZone('UTC'));
            $setting=Setting::find(1);
             $user = User::find($id);
             $factory = (new Factory)->withServiceAccount(env('FIREBASE_CREDENTIALS'));
        $factory = (new Factory())->withDatabaseUri(env('FIREBASE_DATABASE_URL'));
            $database = $factory->createDatabase();
            if($user->usertype=='1'){
                $img = 'profile/'.$user->profile_pic;
            }else if($user->usertype=='3'){
                $doctor = Doctor::where("user_id",$id)->first();
                if($doctor){
                    $img="doctor/".$doctor->image;
                }
            }else if($user->usertype=='2'){
                $img = 'profile/'.$user->profile_pic;
            }else{
                $img = 'profile/'.$user->profile_pic;
            }
            //echo $img;exit;
            $reference = $database->getReference($id);
            $snapshot = $reference->getSnapshot();
            $value = $snapshot->getValue();
            if(empty($value)){
                 $newPost =  $database
                    ->getReference($id)
                    ->set([
                            'name' => $user->name,
                            'profile'=> $img,
                            'usertype'=>$user->usertype
                    ]);
            }
            return view("front.chatarea")->with("department",$department)->with("timezone_name",$timezone_name)->with("setting",$setting)->with("chatuserid",$id);
        }else{
            return redirect('/');
        }

    }

    public function mediaupload(Request $request){

        if ($files = $request->file('file')) {
                $str=explode("/", $_FILES['file']['type']);
                if(isset($str[0])&&$str[0]=='image'){
                    $type="1";
                }else{
                    $type="2";
                }
                $file = $request->file('file');
                $filename = $file->getClientOriginalName();
                $extension = $file->getClientOriginalExtension() ?: 'png';
                $folderName = '/upload/chat';
                $picture = uniqid(). '.' . $extension;
                $destinationPath = public_path() . $folderName;
                $request->file('file')->move($destinationPath, $picture);
                $img_url =$picture;
                $date = new DateTime("now", new DateTimeZone('Asia/Kolkata') );
                $date->setTimeZone(new DateTimeZone('UTC'));
                return json_encode(array("media"=>$img_url,"type"=>$type,"time"=>$date->format('Y-m-d H:i:s.u')));
       }
       return 0;
    }

    public function deletemedia(Request $request)
    {
        $image_path = public_path() ."/upload/chat/".$request->get("name");
        if(file_exists($image_path)) {
                        try {
                             unlink($image_path);
                        }
                        catch(Exception $e) {

                        }
                  }
                  return "done";
    }

    public function privacy_front_app(){
        $data=About::find(1);
        if(Session::get('locale')==""){
        }
        $setting=Setting::find(1);
        return view('front.privacy_policy',compact('data','setting'));
    }

    public function accountdeletion(){
        $data=About::find(1);
        if(Session::get('locale')==""){
            Session::put('locale','en');
        }
        $setting=Setting::find(1);
        return view('front.accountdeletion',compact('data','setting'));
    }

    public function about(){
      $data=About::find(1);
        if(Session::get('locale')==""){
            Session::put('locale','en');
        }
      $setting=Setting::find(1);
      return view('admin.about',compact('data','setting'));
    }

    public function admin_privacy(){
      $data=About::find(1);
      $setting=Setting::find(1);
       if(Session::get('locale')==""){
            Session::put('locale','en');
        }
      return view('admin.terms',compact('data','setting'));
    }

    public function Privacy(){
      $data=About::find(1);
      $setting=Setting::find(1);
      $lang = Lang_core::all();
        if(Session::get('locale')==""){
            Session::put('locale','en');
        }
      return view('front.terms',compact('data','setting'));
    }

    public function app_privacy(){
      $data=About::find(1);
      $setting=Setting::find(1);
       if(Session::get('locale')==""){
            Session::put('locale','en');
        }
      return view('admin.privecy-app',compact('data','setting'));
    }

    public function data_deletion(){
      $data=About::find(1);
      $setting=Setting::find(1);
        if(Session::get('locale')==""){
            Session::put('locale','en');
        }
      return view('admin.data-deletion',compact('data','setting'));
    }

    public function edit_about(Request $request){
      $data=About::find(1);
       $setting=Setting::find(1);
       $data->about = $request->get('about');
       $data->save();
      return redirect('admin/about');
    }

    public function edit_terms(Request $request){
      $data=About::find(1);
      $setting=Setting::find(1);
      $data->trems = $request->get('trems');
       $data->save();
      return redirect('admin/Terms_condition');
    }

    public function edit_app_privacy(Request $request){
      $data=About::find(1);
      $setting=Setting::find(1);
      $data->privacy = $request->get('privacy');
       $data->save();
      return redirect('admin/app_privacy');
    }

    public function edit_data_deletion(Request $request){
      $data=About::find(1);
      $setting=Setting::find(1);
      $data->data_deletion = $request->get('data_deletion');
       $data->save();
      return redirect('admin/data_deletion');
    }

    public function services(){

        $cache_key = Route::currentRouteName();
        if ( Cache::has($cache_key) ) {
            return Cache::get($cache_key);
        } else {
            $service = Service::all();
            $cachedData = view('front.services')->with([
                'service' => $service,

            ])->render();
            Cache::put($cache_key, $cachedData, 604800);
            return $cachedData;
        }

    }
    public function news(){

        $cache_key = Route::currentRouteName().'new';
        if ( Cache::has($cache_key) ) {
            return Cache::get($cache_key);
        } else {
            $newsPost=News::where('news_categories_id',1)->where('status','publish')->with('user')->paginate(15);
            $cachedData = view('front.news')->with([
                'newsPost' => $newsPost,
            ])->render();
            Cache::put($cache_key, $cachedData, 604800);
            return $cachedData;
        }
    }
    public function events(){

        $cache_key = Route::currentRouteName();
        if ( Cache::has($cache_key) ) {
            return Cache::get($cache_key);
        } else {
            $events=News::where('news_categories_id',2)->where('status','publish')->with('user')->paginate(15);
            $cachedData = view('front.events')->with([
                'events' => $events,
            ])->render();
            Cache::put($cache_key, $cachedData, 604800);
            return $cachedData;
        }
    }

    public function news_detail($slug){

        $cache_key = Route::currentRouteName().$slug;
        if ( Cache::has($cache_key) ) {
            return Cache::get($cache_key);
        } else {
            $newsDetail=News::where('news_categories_id',1)->where('slug',$slug)->where('status','publish')->with('user')->first();
            $news=News::where('news_categories_id',1)->with('user')->where('status','publish')->get();
            $categories=NewsCategories::withCount('blogs')->get();
            $cachedData = view('front.newsdetail')->with([
                'newsDetail'=>$newsDetail,
                'news'=>$news,
                'news_categories'=>$categories,
            ])->render();
            Cache::put($cache_key, $cachedData, 604800);
            return $cachedData;
        }
    }

    public function events_detail($slug){


        $cache_key = Route::currentRouteName().$slug;
        if ( Cache::has($cache_key) ) {
            return Cache::get($cache_key);
        } else {
            $newsDetail=News::where('news_categories_id',2)->where('slug',$slug)->where('status','publish')->with('user')->first();
            $news=News::where('news_categories_id',2)->where('status','publish')->get();
            $categories=NewsCategories::withCount('blogs')->get();
            $cachedData = view('front.events_detail')->with([
                'newsDetail'=>$newsDetail,
                'news'=>$news,
                'news_categories'=>$categories,
            ])->render();
            Cache::put($cache_key, $cachedData, 604800);
            return $cachedData;
        }
    }

    public function services_detail($slug){

        $cache_key = Route::currentRouteName().$slug;
        if ( Cache::has($cache_key) ) {
            return Cache::get($cache_key);
        } else {
            $serviceDetail=Service::where('slug',$slug)->first();
            $service=Service::all();
            $cachedData = view('front.servicesdetail')->with([
                'service'=>$service,
                'serviceDetail'=>$serviceDetail
            ])->render();
            Cache::put($cache_key, $cachedData, 604800);
            return $cachedData;
        }
    }

    public function categories_manage($slug){
        return redirect()->route($slug);
    }

    public function about_us(){

        $cache_key = Route::currentRouteName();
        if ( Cache::has($cache_key) ) {
            return Cache::get($cache_key);
        } else {
            $cachedData = view('front.aboutus')->render();
            Cache::put($cache_key, $cachedData, 604800);
            return $cachedData;
        }
    }
}
