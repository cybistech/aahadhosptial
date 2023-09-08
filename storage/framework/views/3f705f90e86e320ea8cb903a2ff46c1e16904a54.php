<?php 
          $main_color = "#05464e";
          $text_color = "white";
          $headingtext_color = "#05464e";
          $lowbackground_box_color = "#b2dee3";
          $slider_color = "#f1f5ff";  
          $footer_header = "#52bfcd";
?>
<style type="text/css">
.top-header {
    background-color: <?=$main_color?> !important;
}

.top-header p {
	color: <?=$text_color?> !important;
}
.appointment-section .header-img{
	background-image: url('<?= Session::get("main_banner") ?>') !important;
}

.appo-btn-main-box button {
	background-color: <?=$main_color?> !important;
	color: <?=$text_color?> !important;
}

.services-btn-main-box a {
	background-color: <?=$main_color?> !important;
	color: <?=$text_color?> !important;
}
.testimonial-part-box{
    border: 1px solid <?=$main_color?> !important;
}

.text-detail-box h4 {
	color: <?=$main_color?> !important;
}

.global-heading h2 {
	color: <?=$main_color?> !important;
}

.global-heading h2::after {
	background-color: <?=$main_color?> !important;
}

.pricing-part-box h3 {
	color: <?=$main_color?> !important;
}

.pricing-part-btn a {
	background-color: <?=$main_color?> !important;
	color: <?=$text_color?> !important;
}

.footer-r1-detail h3 {
	color: <?=$footer_header?> !important;
}

.footer-icons-main-box .footer-icon-box {
	background-color: <?=$main_color?> !important;
}

.subcribe-button-box button {
	background-color: <?=$main_color?> !important;
}

.ch2 {
	background-color: <?=$main_color?> !important;
	border-bottom: 1px solid <?=$text_color?> !important;
}

#overlayer {
	background-color: <?=$main_color?> !important;
}

.chat-home-bottom-mbox span {
    color: <?=$text_color?> !important;
}

.appo-btn-main-box a {
	background-color: <?=$main_color?> !important;
   color: <?=$text_color?> !important; 
}

.d-detail-collapse-doctor .accordion.indicator-plus-before.round-indicator .card-header.collapsed:before {
   color: <?=$text_color?> !important;  
}

.d-detail-collapse-doctor .accordion .card-header {
    color: <?=$text_color?> !important; 
}

.chats-tab-open .contacts-list .contacts-item.active .contacts-link .chat-name {
    color: <?=$text_color?> !important; 
}

.chats-tab-open .contacts-list .contacts-item.active .contacts-link .chat-time,.chats-tab-open .contacts-list .contacts-item.active .contacts-link p {
    color: <?=$text_color?> !important; 
}

.chat-footer {
    left: 0%;
    position: absolute;
    bottom: 19px;
    right: 0;
    background-color: white;
    padding: 10px;
}

.loader {
	border: 4px solid <?=$text_color?> !important;
}

.loader-inner {
	background-color: <?=$text_color?> !important;
}

.chat-home-top-mbox span {
	color: <?=$text_color?> !important;
}

.department-part-box {
	background-color: <?=$lowbackground_box_color?> !important;
}

.doctorpg-tab-mainbox .slick-initialized .slick-slide {
	background-color: <?=Session::get('headingtext_color')?> !important;
}

.footer-icon-box i {
    color: <?=$text_color?> !important;
}

.subcribe-button-box button {
    color: <?=$text_color?> !important;
}

.doctorpg-tab-mainbox .slick-active.active {
    background-color: <?=$main_color?> !important;
    border: 1px solid <?=$main_color?> !important;
    color: <?=$text_color?> !important;
}

.part-form-main-box button {
	background-color: <?=$main_color?> !important;
	color: <?=$text_color?> !important;
}

.global-heading h3:after {
	background-color: <?=$main_color?> !important;
}

.card-header {
	background-color: <?=$main_color?> !important;
}

.sublogin {
	color: <?=$text_color?> !important;
}

.pricelist-part-img-box {
	background-color: <?=$main_color?> !important;
}

.d-detail-emergency-mainbox {
	background-color: <?=$lowbackground_box_color?> !important;
}

.d-detail-emergency-mainbox p {
	color: <?=$main_color?> !important;
}

/*.doctorl-part-box .doctor-detail-part {
	background-color: <?=$lowbackground_box_color?> !important;
}
.doctorl-part-box {
	background-color: <?=$lowbackground_box_color?> !important;
}*/
/*.doctorl-part-detail{
	padding-bottom: 12px !important;
    padding-left: 12px !important;
    padding-right: 12px !important;
}*/

.myaccountpg-main-tabbox {
	background-color: <?=$main_color?> !important;
}

.my-accountpg-main-box .nav-tabs .nav-link.active {
	background-color: <?=$lowbackground_box_color?> !important;
	color: <?=Session::get('headingtext_color')?> !important;
}

.my-accountpg-main-box .nav-tabs .nav-link {
	color: <?=$text_color?> !important;
}

.tab-appointment-box {
	background-color: <?=$lowbackground_box_color?> !important;
}

.tab-appointment-detail2-box span {
	color: <?=Session::get('headingtext_color')?> !important;
}

.part-form-main-box a {
	color: <?=Session::get('headingtext_color')?> !important;
}

.contactpg-part2-main-box {
	background-color: <?=$main_color?> !important;
}

.chats-tab-open .input-group {
	border: 1px solid <?=$main_color?> !important;
}

.chats-tab-open .btn-primary {
	background-color: <?=$main_color?> !important;
}

.chats-tab-open .contacts-list .contacts-item.active .contacts-link {
	background-color: <?=$main_color?> !important;
	border: 1px solid <?=$main_color?> !important;
}

.chats-tab-open .message.self .message-content {
	background-color: <?=$main_color?> !important;
}

.chats-tab-open .contacts-list .contacts-item.active .avatar::before {
	border-color: <?=$main_color?> !important;
}

/*.slick-track{
	transform: translate3d(0px, 0px, 0px)!important;
} */

.chats-tab-open .chat-body .chat-footer {

	bottom: -227px !important;
}
</style><?php /**PATH E:\xampp\htdocs\vidhi\laravel\singleclinic\resources\views/front/cssclass.blade.php ENDPATH**/ ?>