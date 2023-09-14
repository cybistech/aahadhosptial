    <footer class="main-footer">

        <div class="widgets-section" style="background-image: url({{asset('assets/images/background/7.jpg')}});">
            <div class="auto-container">
                <div class="row">

                    <div class="big-column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                        <div class="row">

                            <div class="footer-column col-xl-7 col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget about-widget">
                                    <div class="logo">
                                        <a href="index.html"><img src="{{asset('assets/images/logo-2.png')}}" alt="" /></a>
                                    </div>
                                    <div class="text">
                                        <p>Our Clinic has grown to provide a world class facility for the clinic advanced restorative. </p>
                                        <p>We are among the most qualified implant providers in the AUS with over 30 years of quality training and experience.</p>
                                    </div>
                                    <ul class="social-icon-three">
                                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="#"><i class="fab fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-skype"></i></a></li>
                                        <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    </ul>
                                </div>
                            </div>


                            <div class="footer-column col-xl-5 col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget">
                                    <h2 class="widget-title">Departments</h2>
                                    <ul class="user-links">
                                        @foreach ($department->take(6) as $d)
                                            <li><a href="{{ url('departmentdetail').'/'.$d->slug }}">{{ $d->name }}</a></li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="big-column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                        <div class="row">

                            @php
                                $news=news();
                            @endphp

                            <div class="footer-column col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget recent-posts">
                                    <h2 class="widget-title">Latest News</h2>

                                    <div class="widget-content">
                                        @if (count($news)>0)
                                            @foreach ($news as $n)
                                                <div class="post">
                                                    <?php
                                                        if($n->featured_image){
                                                            $image=asset('upload/news')."/".$n->featured_image;
                                                        }else{
                                                            $image=asset('upload/profile/profile.png');
                                                        }
                                                    ?>
                                                    <div class="thumb"><a href="blog-post-image.html"><img src="{{ $image }}" alt=""></a></div>
                                                    <h4><a href="blog-post-image.html">{{ $n->title }}</a></h4>
                                                    <span class="date">{{ \Carbon\Carbon::parse($n->created_at)->format('j F, Y') }}</span>
                                                </div>
                                            @endforeach
                                        @endif
                                    </div>
                                </div>
                            </div>


                            <div class="footer-column col-lg-6 col-md-6 col-sm-12">

                                <div class="footer-widget contact-widget">
                                    <h2 class="widget-title">Contact Us</h2>

                                    <div class="widget-content">
                                        <ul class="contact-list">
                                            <li>
                                                <span class="icon flaticon-placeholder"></span>
                                                <div class="text">{{ $setting->address }}</div>
                                            </li>

                                            <li>
                                                <span class="icon flaticon-call-1"></span>
                                                <div class="text">{{$setting->working_day}}</div>
                                                <a href="tel:+89868679575"><strong>{{$setting->phone_no}}</strong></a>
                                            </li>

                                            <li>
                                                <span class="icon flaticon-email"></span>
                                                <div class="text">Do you have a Question?<br>
                                                <a href="mailto:info@gmail.com"><strong>{{$setting->email}}</strong></a></div>
                                            </li>

                                            <li>
                                                <span class="icon flaticon-back-in-time"></span>
                                                <div class="text">{{$setting->working_day}}
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-angle-up"></span></div>

            <div class="auto-container">
                <div class="inner-container clearfix">
                    <div class="footer-nav">
                        <ul class="clearfix">
                           <li><a href="{{route('privacy_policy')}}">Privacy Policy</a></li>
                           <li><a href="{{route('contact_us')}}">Contact</a></li>
                           <li><a href="{{route('services')}}">Services</a></li>
                        </ul>
                    </div>

                    <div class="copyright-text">
                        <p>Copyright © 2023 <a href="#">Bold Touch</a>All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</div>

<script src="{{asset('assets/js/jquery.js')}}"></script>
<script src="{{asset('assets/js/popper.min.js')}}"></script>

<script src="{{asset('assets/plugins/revolution/js/jquery.themepunch.revolution.min.js')}}"></script>
<script src="{{asset('assets/plugins/revolution/js/jquery.themepunch.tools.min.js')}}"></script>
<script src="{{asset('assets/plugins/revolution/js/extensions/revolution.extension.actions.min.js')}}"></script>
<script src="{{asset('assets/plugins/revolution/js/extensions/revolution.extension.carousel.min.js')}}"></script>
<script src="{{asset('assets/plugins/revolution/js/extensions/revolution.extension.kenburn.min.js')}}"></script>
<script src="{{asset('assets/plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js')}}"></script>
<script src="{{asset('assets/plugins/revolution/js/extensions/revolution.extension.migration.min.js')}}"></script>
<script src="{{asset('assets/plugins/revolution/js/extensions/revolution.extension.navigation.min.js')}}"></script>
<script src="{{asset('assets/plugins/revolution/js/extensions/revolution.extension.parallax.min.js')}}"></script>
<script src="{{asset('assets/plugins/revolution/js/extensions/revolution.extension.slideanims.min.js')}}"></script>
<script src="{{asset('assets/plugins/revolution/js/extensions/revolution.extension.video.min.js')}}"></script>
<script src="{{asset('assets/js/main-slider-script.js')}}"></script>

<script src="{{asset('assets/js/bootstrap.min.js')}}"></script>
<script src="{{asset('assets/js/jquery.fancybox.js')}}"></script>
<script src="{{asset('assets/js/mmenu.polyfills.js')}}"></script>
<script src="{{asset('assets/js/jquery.modal.min.js')}}"></script>
<script src="{{asset('assets/js/mmenu.js')}}"></script>
<script src="{{asset('assets/js/appear.js')}}"></script>
<script src="{{asset('assets/js/owl.js')}}"></script>
<script src="{{asset('assets/js/wow.js')}}"></script>
<script src="{{asset('assets/js/script.js')}}"></script>
</body>
</html>


