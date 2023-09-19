<?php

namespace App\Http\Controllers;

use App\Model\News;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NewsController extends Controller
{
    public function index(){
        $all_news= News::all();
        return view('admin.news.default')->with('all_news',$all_news);
    }

    public function saveNews($id){
        $data=News::find($id);
        return view('admin.news.savenews')->with([
            'news_id'=>$id,
            'data'=>$data
        ]);
    }

    public function updatedeNews(Request $request){
        if($request->get("id")!="0"){
           $request->validate([
               'title' => 'required',
               'meta_description' => 'required',
               'meta_tags' => 'required',
               'excerpt' => 'required',
               'contents' => 'required',
               'tags' =>'required',
               'status'=>'required',
           ]);
         }else{
           $request->validate([
            'title' => 'required',
            'meta_description' => 'required',
            'meta_tags' => 'required',
            'excerpt' => 'required',
            'contents' => 'required',
            'tags' =>'required',
            'status'=>'required',
            'featured_image' => 'required',
           ]);
        }
       $img_url="";
       if($request->get("featured_image")!=""){
            if ($request->hasFile('featured_image'))
             {
                $file = $request->file('featured_image');
                $filename = $file->getClientOriginalName();
                $extension = $file->getClientOriginalExtension() ?: 'png';
                $folderName = '/upload/news';
                $picture = 'news_'.mt_rand(100000,999999). '.' . $extension;
                $destinationPath = public_path() . $folderName;
                $request->file('featured_image')->move($destinationPath, $picture);
                $img_url = $picture;
                $image_path = public_path() ."/upload/news/".$request->get("featured_image");
                   if(file_exists($image_path)) {
                       try {
                            unlink($image_path);
                       }
                       catch(Exception $e) {

                       }
                   }
            }else{
                $img_url = $request->get("featured_image");
            }
       }else{
           if ($request->hasFile('featured_image'))
             {
                $file = $request->file('featured_image');
                $filename = $file->getClientOriginalName();
                $extension = $file->getClientOriginalExtension() ?: 'png';
                $folderName = '/upload/news';
                $picture = 'news_'.mt_rand(100000,999999). '.' . $extension;
                $destinationPath = public_path() . $folderName;
                $request->file('featured_image')->move($destinationPath, $picture);
                $img_url = $picture;
            }
       }

       if($request->get("id")!="0"){
           $store=News::find($request->get("id"));
           $msg=__('messages.News Update Successfully');
       }else{
           $store=new News();
           $msg=__('messages.News Add Successfully');
       }


       $store->title=$request->get("title");
       $store->slug=Str::slug($request->get('title'));
       $store->meta_description=$request->get("meta_description");
       $store->meta_tags=$request->get("meta_tags");
       $store->excerpt=$request->excerpt;
       $store->contents=$request->contents;
       $store->tags=$request->tags;
       $store->author=Auth::id();
       $store->user_id=Auth::id();
       $store->featured_image=$img_url;
       $store->status=$request->status;
       $store->save();
       Session::flash('message',$msg);
       Session::flash('alert-class', 'alert-success');
       return redirect("admin/newss");
    }


    public function deletenews($id){
        $data=News::find($id);
        if($data){
            $image_path = public_path() ."/upload/news/".$data->featured_image;
            if(file_exists($image_path)) {
                  try {
                         unlink($image_path);//department image delete
                  }
                  catch(Exception $e) {
                  }
            }
            $data->delete();//department delete
        }
        Session::flash('message',__('messages.News Delete Successfully'));
        Session::flash('alert-class', 'alert-success');
        return redirect()->route('newss.index');
  }
}
