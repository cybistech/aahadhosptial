<?php

$allowed_hosts = array('demo.freaktemplate.com');
if (!isset($_SERVER['HTTP_HOST']) || !in_array($_SERVER['HTTP_HOST'], $allowed_hosts)) {
   return ["vdemo"=>"1"];
}else{
  return ["vdemo"=>"0"];
}