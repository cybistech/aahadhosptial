<?php

namespace App\Http\Controllers;

use App\Model\News;
use App\Model\NewsCategories;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NewsController extends Controller
{
    public function index(){
        $all_news= News::all();
        $categories = NewsCategories::all();
        return view('admin.news.default')->with([
            'all_news'=>$all_news,
            'categories'=>$categories,
        ]);
    }

    public function saveNews($id){
        $data=News::find($id);
        $news_categories=NewsCategories::all();
        return view('admin.news.savenews')->with([
            'news_id'=>$id,
            'news_categories'=>$news_categories,
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
               'news_categories'=>'required',
               'tags' =>'required',
               'status'=>'required',
           ]);
         }else{
           $request->validate([
            'title' => 'required',
            'meta_description' => 'required',
            'news_categories'=>'required',
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
           $msg=__('News Update Successfully');
       }else{
           $store=new News();
           $msg=__('News Add Successfully');
       }


       $store->title=$request->get("title");
       $store->slug=Str::slug($request->get('title'));
       $store->meta_description=$request->get("meta_description");
       $store->news_categories_id=$request->get('news_categories');
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
       return redirect("admin/news");
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
        return redirect('admin/news');
  }

    public function category_filter(Request $request)
    {

        $news_category = $request->input('category');

        if ($news_category)
        {
            $query=News::where('news_categories_id', $news_category)->where('status','publish');
        } else
        {
            $query = News::query();
        }
        $all_news = $query->get();
        return response()->json($all_news);
  }
}
