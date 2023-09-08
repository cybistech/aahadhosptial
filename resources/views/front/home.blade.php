@extends('front.layout')
@section('title')
 {{__('messages.Home')}}
@stop
@section('loader')
<div id="overlayer"></div><span class="loader"><span class="loader-inner"></span></span>
@stop
@section('content')
<style>

</style>
<div class="appointment-section">
		<div class="header-img">
		</div>
		<div class="container">
			<div class="header-appo-main-box">
				<h1>{{__('messages.Appointment Now!')}}</h1>
					@if(Session::get("message"))
                     <div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
                        {{Session::get("message")}}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                        </button>
                     </div>
                     @endif
                     <span id="loginerrorreview"></span>
				<form action="{{url('bookappoinment')}}" method="post">
					   {{csrf_field()}}
					<div class="appo-select-main-box">
						<div class="appo-select-box">
							<select id="department" required class="dropdown" name="department" onchange="getserviceanddoctor(this.value)">
								<option value="" disabled="disabled" selected="selected">- {{__('messages.Select Department')}}</option>
								@foreach($department as $d)
								   <option value="{{$d->id}}">{{$d->name}}</option>
								@endforeach
							</select>
						</div>
							<div class="appo-select-box">
							<select id="doctors" required class="dropdown" name="doctors">
								<option value="" disabled="disabled" selected="selected">- {{__('messages.Select Doctors')}}</option>
							</select>
						</div>
						<div class="appo-select-box">
							<select id="service" required class="dropdown" name="service">
								<option value="" disabled="disabled" selected="selected">- {{__('messages.Select Services')}}</option>
							</select>
						</div>

					</div>
					<div class="appo-input-main-box">
						<input type="text" required name="name" id="name" placeholder="Your name" value="{{Auth::user()?Auth::user()->name:''}}">
						<input type="text" required name="phone_no" id="phone_no" placeholder="Phone number" class="appo-right-input" value="{{Auth::user()?Auth::user()->phone_no:''}}">
						<input type="date" required name="app_date" id="app_date" data-date-inline-picker="true" min="<?= date('Y-m-d')?>" placeholder="dd/mm/yyyy">
						<input type="time" required name="app_time" placeholder="Time" class="appo-right-input">
						<textarea rows="3" required name="messages" placeholder="Message"></textarea>
					</div>
					<div class="appo-btn-main-box">
						@if(Auth::id())
						   <button type="submit">{{__('messages.Book Appointment')}}</button>
						@else
						   <button type="button" onclick="changehiddenstatus()" data-toggle="modal" data-target="#myModal">{{__('messages.Book Appointment')}}</button>
						@endif

					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="services-main-box">
		<div class="container">
			<div class="services-left-part">
				<div class="left-part-detail">
					<h2>{{__("messages.Personal care & healthy living")}}</h2>
					<p>{{__('messages.facilitydetails')}}</p>
					<div class="services-btn-main-box">
						<a href="{{url('allfacilites')}}">{{__('messages.Explopre all Facility')}}</a>
					</div>
					<div class="left-triangle">
					</div>
				</div>
			</div>
			<div class="services-right-part">
				<div class="row">
					@if(count($services)>0)
					   <?php $i=0; ?>
					@foreach($services as $s)
						<div class="col-md-4 col-sm-6">
							@if($i%2==0)
 							  <div class="services-part-box services-part1-box">
 							@else
 							  <div class="services-part-box services-part2-box">
 							@endif
								<img src="{{asset('upload/service').'/'.$s->icon}}">
								<div class="text-detail-box">
									<h4>{{$s->name}}</h4>
									<p>{{$s->description}}</p>
								</div>
							</div>
						</div>
						<?php $i++; ?>
					@endforeach
					@endif
				</div>
			</div>
		</div>
	</div>
	<div class="pricing-main-box">
		<div class="container">
			<div class="global-heading">
				<h2>{{__('messages.Help Package')}}</h2>
				<p>{{__("messages.The easiest way to keep life on track")}}</p>
			</div>
			<div class="pricing-part-main-box">
				<div class="row">
					<?php $res_curr=explode("-",$setting->currency);?>
					@foreach($package as $p)
					<div class="col-md-4">
						<div class="pricing-all-content">
							<div class="pricing-part-box">
								<h3>{{$p->name}}</h3>
								<div class="pricing-cost">
									<h3>{{$res_curr[1]}}</h3>
									<span>{{$p->price}}</span>
									<h6>/ session</h6>
								</div>
								<p>{{$p->description}}</p>
							</div>
							<div class="pricing-part-btn">
								<a class="btn" href="{{url('subscription').'/'.$p->id}}">{{__('messages.Order now')}}</a>
							</div>
						</div>
					</div>
					@endforeach
				</div>
			</div>
		</div>
	</div>

	<div class="numbers-counter-main-box">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="numbers-counter-part-box">
						<div id="counter">
							<img src="{{asset('front/img/n1.png')}}">
							<div class="counter-value" data-count="10200">
								{{$setting->happy_client}}
							</div>
							<div class="counter-name">
								<p>{{__("messages.Happy people")}}</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="numbers-counter-part-box">
						<div id="counter">
							<img src="{{asset('front/img/n2.png')}}">
							<div class="counter-value" data-count="700">
								{{$setting->surgery_complete}}
							</div>
							<div class="counter-name">
								<p>{{__('messages.SURGERY COMPLETED')}}</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="numbers-counter-part-box">
						<div id="counter">
							<img src="{{asset('front/img/n3.png')}}">
							<div class="counter-value" data-count="189">
								{{$setting->expert_doctor}}
							</div>
							<div class="counter-name">
								<p>{{__('messages.Expert doctors')}}</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="numbers-counter-part-box">
						<div id="counter">
							<img src="{{asset('front/img/n4.png')}}">
							<div class="counter-value" data-count="11">
								{{$setting->worldwide_branch}}
							</div>
							<div class="counter-name">
								<p>{{__('messages.World wide branch')}}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="doctorl-main-box">
		<div class="container">
			<div class="global-heading">
				<h2>{{__('messages.Meet Our Doctors')}}</h2>
				<p>{{__("messages.Talent wins games, but teamwork and intelligence win championships")}}</p>
			</div>
			<div class="row">
				@if(count($doctorls)>0)
				   @foreach($doctorls as $d)
							<a href="{{url('doctordetails/').'/'.$d->user_id}}"><div class="col-lg-3 col-md-6 col-sm-6">
								<div class="doctorl-part-box">
									<?php
                                             if($d->image){
                                             	$image=asset('upload/doctor')."/".$d->image;
                                             }else{
                                             	$image=asset('upload/profile/profile.png');
                                             }
									?>
									<div class="doctorl-dp-img doctorl-dp-img-1" style="background-image: url('<?=$image?>')"></div>
									<div class="doctorl-part-detail">
										<h4>{{ucwords(strtolower($d->name))}}</h4>
										<p>{{substr(trim($d->about_us),0,135)}}</p>

									<div class="icons-images">
										<span class="facebook-doctorl">
											<a href="{{isset($d->facebook_id)?$d->facebook_id:''}}" target="_blank"><i class="fab fa-facebook-f"></i></a>
										</span>
										<span class="twitter-doctorl">
											<a href="{{isset($d->twitter_id)?$d->twitter_id:''}}" target="_blank"><i class="fab fa-twitter"></i></a>
										</span>
										<span class="gp-doctorl">
											<a href="{{isset($d->google_id)?$d->google_id:''}}" target="_blank"><i class="fab fa-google-plus-g"></i></a>
										</span>
										<span class="instagram-doctorl">
											<a href="{{isset($d->instagram_id)?$d->instagram_id:''}}" target="_blank"><img src="{{asset('front/img/instagram.png')}}"></a>
										</span>
									</div>
									</div>
								</div>
							</div></a>
				    @endforeach
				@endif
			</div>
		</div>
	</div>
<div class="testimonial-main-box">
		<div class="container">
			<div class="global-heading">
				<h2>{{__('messages.Patient Reviews')}}</h2>
				<p>{{__('messages.Feedback is the breakfast of champions')}}</p>
			</div>
			<div class="testimonial-part-main-box">
				<div class="owl-carousel testimonial-carousel">
					@if($review)
						@foreach($review as $r)
						  	<div class="single-testimonial">
						    	<div class="testimonial-part-box">
						    		<div class="testimonial-inner-images">
						    		    <div class="col-md-3 testimage">
						    		        <?php
						    				 if($r->users->profile_pic!=""){
									     	   		$image=asset('upload/profile')."/".$r->users->profile_pic;
									     	   }elseif(isset($r->doctors)&&isset($r->doctors-> $image)){
									     	   		$image=asset('upload/doctor')."/".$r->doctors->image;
									     	   }else{
									     	   		 $image=asset('upload/profile/profile.png');
									     	   }
						    			?>
						    			<img src="{{$image}}" class="testimonial-profile-img">
						    		    </div>
						    		    <div class="col-md-9 testtext">
						    		        	<p class="testip">{{substr($r->review,0,165)}}</p>
						    			<span class="testimonialspan"></span>
						    			@if(isset($r->users->name))
						    			<h3 class="testimonialh">- {{$r->users->name}}</h3>
						    			@endif
						    		    </div>
						    		</div>
						    	</div>
						  	</div>
					  	@endforeach
				  	@endif
				</div>
			</div>
		</div>
	</div>
@stop
