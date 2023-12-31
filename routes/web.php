<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use App\Http\Controllers\braintreeController;
use App\Http\Controllers\AuthenticatedoctorController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Auth\FacebookController;
use App\Http\Controllers\ChatsController;
use App\Http\Controllers\SubscriptionController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\DepartmentController;
use App\Http\Controllers\DoctorController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\AppointmentController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\PackageController;
use Illuminate\Support\Facades\Artisan;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// $routeName = $request->route()->getName();
//         $request->whenHas('__cc', function ($input) use ($routeName) {
//             Cache::tags($routeName)->flush();
//         });

Route::get('p/migrate_reset', function (Request $request) {
    $migrationPath = '/database/migrations/2023_09_25_131352_add_is_off_to_time_table.php';
    $command = "migrate --path=$migrationPath";
    // dd($command);exit;
    Artisan::call($command);
    return "Migration complete!";
});

Route::get('cache_clear', function() {
   Artisan::call('config:cache');
   Artisan::call('optimize:clear');
   Artisan::call('cache:clear');
    return redirect('/');
});
 Route::get("/brain",[braintreeController::class,'showbrain']);

 Route::get("add_doctor_review",[AuthenticatedoctorController::class,'show_product_review_user']);
 Route::post("checkoutbrain",[braintreeController::class,'checkoutbrain']);
Route::get("sendnotification",[FrontController::class,'sendnotification']);
Route::get("privacy_policy",[HomeController::class,'privacy']);
Route::group(['prefix' => '/'], function () {
     Route::get('auth/{driver}',[FacebookController::class,'redirectToProvider'])->name('social.oauth');
     Route::get('auth/{driver}/callback',[FacebookController::class,'handleProviderCallback'])->name('social.callback');

     Route::get("/",[HomeController::class,'showlogin']);

     Route::get("/",[FrontController::class,'showhome'])->name('home');
     Route::get("getserviceanddoctor/{id}",[FrontController::class,'getserviceanddoctor']);
     Route::post("bookappoinment",[FrontController::class,'bookappoinment']);
     Route::get("allfacilites",[FrontController::class,'allfacilites']);
     Route::get("departments",[FrontController::class,'department'])->name('departments');
     Route::get('services',[FrontController::class,'services'])->name('services');
     Route::get('services/{slug}',[FrontController::class,'services_detail'])->name('service_detail');
     Route::get('events',[FrontController::class,'events'])->name('events');
     Route::get('news',[FrontController::class,'news'])->name('news');
     Route::get('news/{slug}',[FrontController::class,'news_detail'])->name('news_detail');
     Route::get('events/{slug}',[FrontController::class,'events_detail'])->name('event_detail');
     Route::get('categories/{slug}',[FrontController::class,'categories_manage'])->name('manage_categories');
     Route::get("departments/{slug}",[FrontController::class,'departmentdetail'])->name('department_detail');
     Route::get("doctors",[FrontController::class,'doctorlist'])->name('doctors');
     Route::get("gallery",[FrontController::class,'gallery']);
     Route::get("contact-us",[FrontController::class,'contact_us'])->name('contact_us');
     Route::any("savecontact",[FrontController::class,'savecontact']);
     Route::any("savesubscribe/{email}",[FrontController::class,'savesubscribe']);
     Route::any("pricing",[FrontController::class,'pricing']);
     Route::any("terms-condition",[FrontController::class,'termcondition'])->name('terms_and_conditions');
     Route::any("privacy-policy",[FrontController::class,'privacypolicy'])->name('privacy_policy');
     Route::get('about-us',[FrontController::class,'about_us'])->name('about_us');
     Route::get("postregister",[FrontController::class,'postregister']);
     Route::get("postlogin",[FrontController::class,'postlogin']);
     Route::get("userlogout",[FrontController::class,'userlogout']);
     Route::get("postforgot",[FrontController::class,'postforgot']);
     Route::get("doctors/{slug}",[FrontController::class,'doctordetails'])->name('doctor_details');
     Route::any("addreview",[FrontController::class,'addreview']);
     Route::post("mediaupload",[FrontController::class,'mediaupload']);
     Route::post("deletemedia",[FrontController::class,'deletemedia']);

     Route::get("myaccount",[FrontController::class,'myaccount']);
     Route::post("updateprofile",[FrontController::class,'updateprofile']);
     Route::get("checkcurrentpwd",[FrontController::class,'checkcurrentpwd']);
     Route::any("changepasswords",[FrontController::class,'changepasswords']);

     Route::any("chat/{id}",[ChatsController::class,'showchat']);
      Route::any("chatarea/{id}",[FrontController::class,'show_chat_area'])->name("chatarea");
     Route::get("getchannelmessage/{channel_id}/{second_id}",[ChatsController::class,'getchannelmessage']);

     Route::any("createchannel/{id}",[ChatsController::class,'createchannel']);
     Route::get("token",[ChatsController::class,'gettoken']);

     Route::get("deletechatmsg/{msg_id}/{channel_id}/{type}/{irow}",[ChatsController::class,'deletechatmsg']);
     Route::get("updatechannelmsg",[ChatsController::class,'updatechannelmsg']);
	 Route::get("getchannelmember",[ChatsController::class,'getchannelmember']);
	 Route::get("timeformat",[ChatsController::class,'timeformatfront']);
	 Route::get("settimezone/{time}",[HomeController::class,'settimezone']);
	 Route::get("getmessagebody/{msg_id}/{channel_id}",[ChatsController::class,'getmessagebody']);

     Route::get("subscription/{package_id}",[SubscriptionController::class,'showorderpage']);
     Route::post("userlogin",[FrontController::class,'userlogin']);

     Route::post("paymentsubscription",[SubscriptionController::class,'paymentsubscription']);
     Route::get("videosendnotification",[ChatsController::class,'videosendnotification']);
     Route::get("resetpassword/{code}",[FrontController::class,'resetpwd']);
     Route::any("resetnewpwd",[FrontController::class,'resetpassword']);
     Route::Get("getcurrenttime/{offset}",[HomeController::class,'getcurrenttime']);

    //Route::get("sendnotification","ChatsController@sendnotification");
    // Route::any("chatmediaupload","ChatsController@chatmediaupload");



Route::get("Privacy-Policy",[FrontController::class,'privacy_front_app']);
Route::get("accountdeletion",[FrontController::class,'accountdeletion'])->name("accountdeletion");

});

Route::group(['prefix' => 'admin'], function () {
	 Route::get("/",[HomeController::class,'showlogin']);
	 Route::post("postlogin",[HomeController::class,'postlogin']);

     Route::group(['middleware' => ['admincheckexiste']], function () {
		 Route::get("dashboard",[HomeController::class,'showdashboard'])->name("dashboard");
		 Route::get("logout",[HomeController::class,'logout']);
         Route::get("settimezone/{time}",[HomeController::class,'settimezone']);
         Route::get('cache-clear',[HomeController::class,'clear_cache'])->name('cache.clear');
		 //service
		 Route::resource("service",ServiceController::class);
		 Route::get("saveservice/{id}",[ServiceController::class,'saveservice']);
		 Route::post("updateservice",[ServiceController::class,'updateservice']);
		 Route::get("deleteservice/{id}",[ServiceController::class,'deleteservice']);
         Route::get("settimezone/{time}",[HomeController::class,'settimezone']);
		 //department
		 Route::resource("department",DepartmentController::class);
		 Route::get("savedepartment/{id}",[DepartmentController::class,'saveddepartment']);
		 Route::post("updatedepartment",[DepartmentController::class,'updatedepartment']);
		 Route::get("deletedepartment/{id}",[DepartmentController::class,'deletedepartment']);
		 Route::get("departmentservice/{id}",[DepartmentController::class,'departmentservice']);
		 Route::get("savedepartmentservice/{dept_id}/{id}",[DepartmentController::class,'savedepartmentservice']);
		 Route::post("updatedepartmentservice",[DepartmentController::class,'updatedepartmentservice']);
		 Route::get("deletedepartmentservice/{id}",[DepartmentController::class,'deletedepartmentservice']);

		 //doctor
		 Route::resource("doctor",DoctorController::class);
		 Route::get("savedoctor/{id}/{tab_id}",[DoctorController::class,'savedoctor']);
		 Route::post("updatedoctorprofile",[DoctorController::class,'updatedoctorprofile']);
		 Route::get("deletedoctor/{id}",[DoctorController::class,'deletedoctor']);
		 Route::post("updateworkinghours",[DoctorController::class,'updateworkinghours']);

		     Route::get("editprofile",[HomeController::class,'editprofile']);
	       Route::post("updateprofile",[HomeController::class,'updateprofile']);
	       Route::get("changepassword",[HomeController::class,'changepassword'])->name("changepassword");
         Route::get("samepwd/{id}",[HomeController::class,'check_password_same']);
         Route::post("updatepassword",[HomeController::class,'updatepassword']);

         Route::resource("notification",NotificationController::class);
         Route::post("savenotification", [NotificationController::class,'savenotification']);

         //  News
         Route::resource('news', NewsController::class);
         Route::get('saveNews/{id}',[NewsController::class,'saveNews']);
         Route::post("updatenews",[NewsController::class,'updatedeNews']);
         Route::get("deletedenews/{id}",[NewsController::class,'deletenews']);
         Route::get('filter/category',[NewsController::class,'category_filter'])->name('category-filter');


         //album
         Route::resource("gallery",GalleryController::class);
         Route::get("savealbum/{id}",[GalleryController::class,'savealbum']);
         Route::post("updatealbum",[GalleryController::class,'updatealbum']);
         Route::get("deletealbum/{id}",[GalleryController::class,'deletealbum']);
         Route::get("addphoto/{album_id}",[GalleryController::class,'addphoto']);


         Route::any("uploadimage/{album_id}",[GalleryController::class,'uploadimage']);
         Route::get("deletegalleryphoto/{id}",[GalleryController::class,'deletegalleryphoto']);

         Route::get("setting/{id}",[NotificationController::class,'showsetting']);
         Route::post("savebasicsetting",[NotificationController::class,'savebasicsetting']);
         Route::post("saveserverkey",[NotificationController::class,'saveserverkey']);
         Route::post("savesitesetting",[NotificationController::class,'savesitesetting']);
         Route::post("saveterms",[NotificationController::class,'saveterms']);
         Route::post("saveprivacy",[NotificationController::class,'saveprivacy']);
         Route::post("saveuploadsection",[NotificationController::class,'saveuploadsection']);

         Route::get("appointment/{start_date}/{end_date}",[AppointmentController::class,'showappointment']);

         Route::resource("package",PackageController::class);
         Route::get("savepackage/{id}",[PackageController::class,'savepackage']);
         Route::post("updatepackage", [PackageController::class,'updatepackage']);
         Route::get("deletepackage/{id}", [PackageController::class,'deletepackage']);
         Route::get("changesettingstatus/{fields}",[NotificationController::class,'changesettingstatus']);

         Route::get("review",[DoctorController::class,'showreview']);
         Route::get("deletereview/{id}",[DoctorController::class,'deletereview']);

        // Route::get("news",[NotificationController::class,'shownews']);
        // Route::post("sennews",[NotificationController::class,'sendnews']);
        Route::get("contactus",[HomeController::class,'showcontactus']);

        Route::get("patient",[HomeController::class,'showpatient']);

		Route::get("paymentgateway",[PackageController::class,'getpaymentgateway']);
		Route::get("editpaymentgateway/{id}",[PackageController::class,'editpaymentgateway']);
		Route::post("updatepaymentgateway",[PackageController::class,'updatepaymentgateway']);
		Route::get("changestatuspayment/{pay_id}/{status}",[PackageController::class,'changestatuspayment']);

        Route::get("subscription",[SubscriptionController::class,'showsubscription']);
        Route::get("changepackagestatus/{status}/{id}",[SubscriptionController::class,'changepackagestatus']);
        Route::any("chat",[HomeController::class,'showchat'])->name("chat");

        Route::get("about",[FrontController::class,'about'])->name("about");
        Route::get("Terms_condition",[FrontController::class,'admin_privacy'])->name("Terms_condition");
        Route::get("app_privacy",[FrontController::class,'app_privacy'])->name("app_privacy");
        Route::get("data_deletion",[FrontController::class,'data_deletion'])->name("data_deletion");

        Route::post("edit_about",[FrontController::class,'edit_about'])->name("edit_about");
        Route::post("edit_terms",[FrontController::class,'edit_terms'])->name("edit_terms");
        Route::post("edit_app_privacy",[FrontController::class,'edit_app_privacy'])->name("edit_app_privacy");
        Route::post("edit_data_deletion",[FrontController::class,'edit_data_deletion'])->name("edit_data_deletion");

	 });

});

Route::group(['prefix' => 'doctor'], function () {

       Route::get("/",[HomeController::class,'doctorlogin']);

       Route::group(['middleware' => ['Doctorcheck']], function () {
 Route::get("settimezone/{time}",[HomeController::class,'settimezone']);
           Route::get("dashboard",[AuthenticatedoctorController::class,'showdashboard']);
           Route::get("logout",[AuthenticatedoctorController::class,'showlogout']);

           Route::any("chat",[AuthenticatedoctorController::class,'showchat'])->name("chat");


            Route::get("editprofile/{tab_id}",[AuthenticatedoctorController::class,'editprofile']);
            Route::any("updatedoctorprofile",[AuthenticatedoctorController::class,'updatedoctorprofile']);
            Route::post("updateworkinghours",[AuthenticatedoctorController::class,'updateworkinghours']);
            Route::get("sendnotification",[ChatsController::class.'sendnotification']);

            Route::get("appointment",[AppointmentController::class,'showdoctorappointment']);
            Route::get("orderstatus/{order_id}/{appointment_id}",[AppointmentController::class,'changeorderstatus']);
            Route::any("apmreschedule",[AppointmentController::class,'apmreschedule']);
            Route::get("getreferdoctor/{id}",[AppointmentController::class,'']);
            Route::any("apmrefer",[AppointmentController::class,'getreferdoctor']);
            Route::get("review",[AuthenticatedoctorController::class,'showreview']);
            Route::get('sender', function () {

                  event(new App\Events\FormSubmitted("hetal","New Messages"));
            });


       });

});
