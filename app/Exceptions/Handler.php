<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;
use Session;
use App\Model\Department;
use App\Model\Setting;
class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Throwable  $exception
     * @return void
     *
     * @throws \Exception
     */
    public function report(Throwable $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Throwable  $exception
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @throws \Throwable
     */
    public function render($request, Throwable $exception)
    {
        if ($this->isHttpException($exception)) {
            if ($exception->getStatusCode() == 404) {
                $setting = Setting::find(1);
                if($setting->is_web==2){ // admin
                   // return view("errors.admin404");
                    return response()->make(view('errors.admin404'), 404);

                }else{
                    Session::put("email",$setting->email);
                    Session::put("phone",$setting->phone_no);
                    Session::put("address",$setting->address);
                    Session::put("facebook_id",$setting->facebook_id);
                    Session::put("twitter_id",$setting->twitter_id);
                    Session::put("google_id",$setting->google_id);
                    Session::put("instagram_id",$setting->instagram_id);
                    Session::put("facebook_active",$setting->facebook_active);
                    Session::put("google_active",$setting->google_active);
                    Session::put("working_day",$setting->working_day);
                    Session::put("logo",asset('public/upload/images').'/'.$setting->logo);
                    Session::put("departmentlist",Department::all());
                    //return view("errors")->with("setting",$setting);
                    return response()->view('errors.' . '404', [], 404);
                }
                
            }
        }
        return parent::render($request, $exception);
    }
}
