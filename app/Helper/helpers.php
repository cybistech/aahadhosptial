<?php

/*
|--------------------------------------------------------------------------
| Register Namespaces And Routes
|--------------------------------------------------------------------------
|
| When a module starting, this file will executed automatically. This helps
| to register some namespaces like translator or view. Also this file
| will load the routes file for each module. You may also modify
| this file as you want.
|
*/

use App\Model\News;
use App\Model\Setting;
use App\Model\Department;

function news(){
    $news=News::where('news_categories_id',1)->get();
    return $news;
}

if (!function_exists('setting')) {
    function setting() {
        $setting = Setting::find(1);

        return $setting;
    }
}

if (!function_exists('department')) {
    function department() {
        $department=Department::all();

        return $department;
    }
}
