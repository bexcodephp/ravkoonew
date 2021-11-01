<?php
/**
* Template Name: Home Page
*/

get_header();

?>

<div id="js-home-wrapper" class="page-home-wrapper">
	<div id="js-home-sections" class="home-sections">
        <!-- SECTION NO. 1 -->
        <!--  section HOME Banner START -->
        <!-- part 1 START -->
		<section class="home-section hs1 panel home-banner">
			<!-- web view -->
			<img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/banner_home_v2.png" alt="" class="img-full bg-img d-lg-block d-none">
            <!-- ipad view -->
            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_home_ipad.png" alt="" class="img-full bg-img d-lg-none d-md-block d-none">
			<!-- mobile view -->
			<img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_home_mobile.png" alt="" class="img-full bg-img d-md-none">
            <div class="container banner-titles" id="banner_title">
				<div class="row">
					<div class="col-12 text-center" id="title_1">
						<div class="title-wrapper">
							<h2 class="title"><span class="r-pink">Leading Pharmacy <br/></span><span class="r-pink"> Innovation</span></h2>
						</div>
					</div>
				</div>
			</div>
		</section>
        <!-- <section id="banner_title" class="home-section home-banner" data-scroll-sticky data-scroll-target="#js-home-sections">
            <div class="container banner-contents animated" >
                <div class="row">
                    <div class="col-12 text-center">
                        <div class="title-wrapper">
                            <h1 class="title"><span class="r-pink">Leading Pharmacy <br/></span><span class="r-pink"> Innovation</span></h1>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        <!-- 1- section HOME Banner END of part - 2 -->

        <!-- SECTION NO. 2 -->
        <!-- 2- section Leading Pharmacy START -->
        <!-- part 1 START -->
		<section class="home-section hs2 section-leading-pharmacy bg-white sec-p" id="section_leading_pharmacy">
			<div class="container" id="pinContainer">
				<div class="row align-items-center">
                    <!-- MOBILE VIEW -->
					<div class="col-lg-6 col-12">
                        <div class="title-wrapper d-lg-none d-flex title-2 mb-0" id="title_2">
    						<h2 class="title ml-0"><span class="r-pink">Leading Pharmacy <br /></span><span class="r-pink"> Innovation</span></h2>
                        </div>
                        <div id="lp_dots_container" class="lp-dots-container d-lg-none d-flex mb-5"></div>
					</div>
                    <!-- WEB VIEW -->
					<div class="col-lg-6 d-lg-block d-none">
						<div class="card-deck flex-md-column">
							<div class="card mb-md-4 card-app" id="card_app" style="background-image: url('<?php echo get_home_url()?>/wp-content/uploads/2021/10/health_app_bg.svg');">
                                <div class="row no-gutters">
    								<div class="col-md-8 card-body d-flex flex-column">
                                        <div class="card-content mb-md-4">
        									<h5 class="card-title">Ravkoo <br/>Health App</h5>
        									<p class="card-text">Healthcare at your fingertips</p>
                                        </div>
                                        <div class="card-link mt-auto">
                                            <a href="#" class="btn btn-link">Learn More<i class="bi bi-chevron-right ml-2"></i></a>
                                        </div>
    								</div>
                                    <div class="col-md-4 card-image">
                                        <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/health_app_mobile.png" alt="...">
                                    </div>
                                </div>
							</div>
                            <div class="card mb-md-4 card-watch" id="card_watch" style="background-image: url('<?php echo get_home_url()?>/wp-content/uploads/2021/10/health_watch_bg.svg');">
                                <div class="row no-gutters">
                                    <div class="col-md-8 card-body d-flex flex-column">
                                        <div class="card-content mb-md-4">
                                            <h5 class="card-title">Ravkoo <br/>Health Watch</h5>
                                            <p class="card-text">Your Health and Fitness Tracker</p>
                                        </div>
                                        <div class="card-link mt-auto">
                                            <a href="#" class="btn btn-link">Learn More<i class="bi bi-chevron-right ml-2"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 card-image">
                                        <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/health_watch.png" alt="...">
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-md-4 card-kiosk" id="card_kiosk" style="background-image: url('<?php echo get_home_url()?>/wp-content/uploads/2021/10/connect_kiosk_bg.svg');">
                                <div class="row no-gutters">
                                    <div class="col-md-8 card-body d-flex flex-column">
                                        <div class="card-content mb-md-4">
                                            <h5 class="card-title">Connect Kiosk</h5>
                                            <p class="card-text">Virtual Pharmacy Experience into Practice</p>
                                        </div>
                                        <div class="card-link mt-auto">
                                            <a href="#" class="btn btn-link">Learn More<i class="bi bi-chevron-right ml-2"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 card-image">
                                        <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/kiosk.png" alt="...">
                                    </div>
                                </div>
                            </div>
						</div>
					</div>
                    <!-- MOBILE VIEW -->
                    <div class="col-12 d-lg-none">
                        <div id="leading_pharmacy_slider" class="leading-pharmacy-slider">
                            <div class="s-item">
                                <div class="card card-app" id="card_app_mobile" style="background-image: url('<?php echo get_home_url()?>/wp-content/uploads/2021/10/health_app_bg.svg');">
                                    <div class="row no-gutters">
                                        <div class="col-12 card-body d-flex flex-column">
                                            <div class="card-content mb-md-4">
                                                <h5 class="card-title">Ravkoo <br/>Health App</h5>
                                                <p class="card-text">Healthcare at your fingertips</p>
                                            </div>
                                            <div class="card-link mt-auto">
                                                <a href="#" class="btn btn-link">Learn More<i class="bi bi-chevron-right ml-2"></i></a>
                                            </div>
                                        </div>
                                        <div class="col-12 card-image align-self-end">
                                            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/health_app_mobile.png" alt="...">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="s-item">
                                <div class="card card-watch" id="card_watch_mobile" style="background-image: url('<?php echo get_home_url()?>/wp-content/uploads/2021/10/health_watch_bg.svg');">
                                    <div class="row no-gutters">
                                        <div class="col-12 card-body d-flex flex-column">
                                            <div class="card-content mb-md-4">
                                                <h5 class="card-title">Ravkoo <br/>Health Watch</h5>
                                                <p class="card-text">Your Health and Fitness Tracker</p>
                                            </div>
                                            <div class="card-link mt-auto">
                                                <a href="#" class="btn btn-link">Learn More<i class="bi bi-chevron-right ml-2"></i></a>
                                            </div>
                                        </div>
                                        <div class="col-12 card-image align-self-end">
                                            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/health_watch.png" alt="...">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="s-item">
                                <div class="card card-kiosk" id="card_kiosk_mobile" style="background-image: url('<?php echo get_home_url()?>/wp-content/uploads/2021/10/connect_kiosk_bg.svg');">
                                    <div class="row no-gutters">
                                        <div class="col-12 card-body d-flex flex-column">
                                            <div class="card-content mb-md-4">
                                                <h5 class="card-title">Connect Kiosk</h5>
                                                <p class="card-text">Virtual Pharmacy Experience into Practice</p>
                                            </div>
                                            <div class="card-link mt-auto">
                                                <a href="#" class="btn btn-link">Learn More<i class="bi bi-chevron-right ml-2"></i></a>
                                            </div>
                                        </div>
                                        <div class="col-12 card-image align-self-end">
                                            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/kiosk.png" alt="...">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
		</section>
        <!-- 2- section Leading Pharmacy END of part - 1 -->
        
        <!-- SECTION NO. 3 -->
        <!-- 3- section-money START -->
        <!-- NOTE: short form = sm -->
        <!-- part 1 START -->
        <section class="home-section hs3 section-money part-1 sec-p" id="four">
            <!-- web view -->
            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_time_money.png" alt="" class="img-full bg-img d-lg-block d-none">
            <!-- ipad view -->
            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_time_money_ipad.png" alt="" class="img-full bg-img d-lg-none d-md-block d-none">
            <!-- mobile view -->
            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_time_money_mobile.png" alt="" class="img-full bg-img d-md-none">
            <div class="container" id="">
                <div class="row banner-titles align-items-center">
                    <div class="col-12 text-center" id="title_money_1">
                        <div class="title-wrapper">
                            <h2 class="title"><span class="r-pink">Time is money <br/></span><span class="r-pink">We Save Both</span></h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- SECTION NO. 4 -->
        <!-- part 2 START -->
		<section class="home-section hs4 section-money part-2 sec-p">
			<img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/hm_part_2.png" alt="" class="img-full bg-img d-lg-block d-none">
            <div class="container" id="">
                <div class="row banner-titles align-items-center">
                    <div class="col-lg-6 left sm-links" id="sm_links">
                        <div class="text-left mb-4" id="title_money_2">
                            <div class="title-wrapper">
                                <h2 class="title"><span class="r-pink">Time is money <br/></span><span class="r-pink">We Save Both</span></h2>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mt-2">
                            <a href="#" class="btn btn-pink btn-switch-ravkoo mr-lg-5 mr-4">Switch to Ravkoo</a>
                            <a href="#" class="btn btn-link-black btn-learn-more">Learn More <i class="bi bi-chevron-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-6 right sm-content" id="sm_content">
                        <div class="sub-title-wrapper">
                            <h3 class="sub-title"><span>Same day</span><br/><span>prescription delivery</span><br/><span>nationwide</span></h3>
                        </div>
                    </div>
                </div>
            </div>
		</section>
        <!-- 3 section-money END -->

        <!-- SECTION NO. 5 -->
        <!-- 4- Our Best SELLERS START -->
        <!-- NOTE: short form = obs -->
        <!-- part 1 START -->
		<section class="home-section hs5 section-ob-sellers part-1 sec-p">
			<!-- web view -->
            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/our_best_sellers.png" alt="" class="img-full bg-img d-lg-block d-none">
            <!-- ipad view -->
            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/our_best_sellers_ipad.png" alt="" class="img-full bg-img d-lg-none d-md-block d-none">
            <!-- mobile view -->
            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/our_best_sellers_mobile.png" alt="" class="img-full bg-img d-md-none">
            <div class="container" id="">
                <div class="row banner-titles align-items-center">
                    <div class="col-12 text-center" id="title_obs_1">
                        <div class="title-wrapper">
                            <h2 class="title"><span class="r-pink">Our <br/></span><span class="r-pink">Best Sellers</span></h2>
                        </div>
                    </div> 
                </div>
            </div>
		</section>
        <!-- SECTION NO. 6 -->
        <!-- part 2 START -->
        <section class="home-section hs6 section-ob-sellers part-2 sec-p">
            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_our_best_sellers_products.png" alt="" class="img-full bg-img d-lg-block d-none">
            <div class="container" id="">
                <div class="row banner-titles align-items-center">
                    <div class="col-lg-4 left obs-links" id="">
                        <div class="text-left mb-4" id="title_obs_2">
                            <div class="title-wrapper">
                                <h2 class="title"><span class="r-pink">Our <br/></span><span class="r-pink">Best Sellers</span></h2>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mt-2">
                            <a href="#" class="btn btn-link-black btn-learn-more">Explore More <i class="bi bi-chevron-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-8 right obs-content" id="">
                        <div class="products-list-wrapper">
                            <!-- listing of products -->
                            <ul class="row row-cols-2 row-cols-md-3 product-list justify-content-start">
                                <li class="col mb-4">
                                    <div class="card h-100"> 
                                        <div class="card-img-top" data-toggle="tooltip" data-placement="bottom" trigger="hover" title="Advanced Hand Sanitizer Advanced Hand Sanitizer">
                                            <a href="#1" class="card-img-link" role="button" >
                                                <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/product_1.png" class="card-img" alt="product_1">
                                            </a>
                                        </div>
                                        <div class="card-body d-flex justify-content-between align-items-start">
                                            <a href="#" class="card-title-link" role="button"><h5 class="card-title ob-title text-truncate" data-toggle="tooltip" data-placement="bottom" trigger="hover" title="Advanced Hand Sanitizer Advanced Hand Sanitizer">Advanced Hand Sanitizer Advanced Hand Sanitizer</h5></a>
                                            <div class="card-text"><span>&#36;</span><span class="product-price">1225</span></div>
                                        </div>
                                        <div class="card-footer d-flex justify-content-between align-items-center p-0">
                                            <button class="btn btn-pink">Add to Cart</button>
                                            <button class="btn btn-pink">Buy Now</button>
                                        </div>
                                    </div>
                                </li>
                                <li class="col mb-4">
                                    <div class="card h-100"> 
                                        <div class="card-img-top" data-toggle="tooltip" data-placement="bottom" trigger="hover" title="Advanced Hand Sanitizer Advanced Hand Sanitizer">
                                            <a href="#1" class="card-img-link" role="button" >
                                                <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/product_1.png" class="card-img" alt="product_1">
                                            </a>
                                        </div>
                                        <div class="card-body d-flex justify-content-between align-items-start">
                                            <a href="#" class="card-title-link" role="button"><h5 class="card-title ob-title text-truncate" data-toggle="tooltip" data-placement="bottom" trigger="hover" title="Advanced Hand Sanitizer Advanced Hand Sanitizer">Advanced Hand Sanitizer Advanced Hand Sanitizer</h5></a>
                                            <div class="card-text"><span>&#36;</span><span class="product-price">1225</span></div>
                                        </div>
                                        <div class="card-footer d-flex justify-content-between align-items-center p-0">
                                            <button class="btn btn-pink">Add to Cart</button>
                                            <button class="btn btn-pink">Buy Now</button>
                                        </div>
                                    </div>
                                </li>
                                <li class="col mb-4">
                                    <div class="card h-100"> 
                                        <div class="card-img-top" data-toggle="tooltip" data-placement="bottom" trigger="hover" title="Advanced Hand Sanitizer Advanced Hand Sanitizer">
                                            <a href="#1" class="card-img-link" role="button" >
                                                <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/product_1.png" class="card-img" alt="product_1">
                                            </a>
                                        </div>
                                        <div class="card-body d-flex justify-content-between align-items-start">
                                            <a href="#" class="card-title-link" role="button"><h5 class="card-title ob-title text-truncate" data-toggle="tooltip" data-placement="bottom" trigger="hover" title="Advanced Hand Sanitizer Advanced Hand Sanitizer">Advanced Hand Sanitizer Advanced Hand Sanitizer</h5></a>
                                            <div class="card-text"><span>&#36;</span><span class="product-price">1225</span></div>
                                        </div>
                                        <div class="card-footer d-flex justify-content-between align-items-center p-0">
                                            <button class="btn btn-pink">Add to Cart</button>
                                            <button class="btn btn-pink">Buy Now</button>
                                        </div>
                                    </div>
                                </li>
                                <li class="col mb-4">
                                    <div class="card h-100"> 
                                        <div class="card-img-top" data-toggle="tooltip" data-placement="bottom" trigger="hover" title="Advanced Hand Sanitizer Advanced Hand Sanitizer">
                                            <a href="#1" class="card-img-link" role="button" >
                                                <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/product_1.png" class="card-img" alt="product_1">
                                            </a>
                                        </div>
                                        <div class="card-body d-flex justify-content-between align-items-start">
                                            <a href="#" class="card-title-link" role="button"><h5 class="card-title ob-title text-truncate" data-toggle="tooltip" data-placement="bottom" trigger="hover" title="Advanced Hand Sanitizer Advanced Hand Sanitizer">Advanced Hand Sanitizer Advanced Hand Sanitizer</h5></a>
                                            <div class="card-text"><span>&#36;</span><span class="product-price">1225</span></div>
                                        </div>
                                        <div class="card-footer d-flex justify-content-between align-items-center p-0">
                                            <button class="btn btn-pink">Add to Cart</button>
                                            <button class="btn btn-pink">Buy Now</button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- 4- Our Best SELLERS END -->

	</div>
</div><!-- #site-content -->

<script>
    // jQuery(window).on('resize', function(){
    //     var win = jQuery(this); //this = window
    //     if (win.width() >= 992) { 

    //          // ScrollMagic 
    //         var controller = new ScrollMagic.Controller();
            
    //         var tl = new TimelineMax();
    //         tl.to("#js-home-sections", 1, {xPercent: -16.67});
    //         tl.from("#title_2", 0.5, { opacity: 0, scale: 2.5}, "-=1");
    //         tl.to("#js-home-sections", 1, { xPercent: -33.32 });

    //         tl.from("#card_app", 0.5, { opacity: 0, xPercent: 100 }, "-=1.9");
    //         tl.from("#card_watch", 0.5, {  opacity: 0, xPercent: 800 }, "-=1.7");
    //         tl.from("#card_kiosk", 0.5, {  opacity: 0, xPercent: 1500 }, "-=1.5");
 
    //         tl.to("#js-home-sections", 1, { xPercent: -49.98});
    //         tl.to("#js-home-sections", 1, { xPercent: -66.64});
    //         tl.to("#js-home-sections", 1, { xPercent: -83.30});
            

    //          // tl.from("#title_money", 0.5, { xPercent: 0 }, "-=1");
    //         // tl.from("#sm_links", 0.5, { xPercent: 200 }, "-=1");
    //         // tl.from("#sm_content", 0.5, { xPercent: 300 }, "-=1");

    //         // create scene to pin and link animation
    //         new ScrollMagic.Scene({
    //             triggerElement: "#js-home-wrapper",
    //             triggerHook: "onLeave",
    //             duration: "600%"
    //         })
    //         .setPin("#js-home-wrapper")
    //         .setTween(tl)
    //         .addTo(controller);
    //     }
    // });

    (function ($) {
        $(window).on('resize', function(){
            var win = $(this); //this = window
            if (win.width() >= 992) { 
                
                 // ScrollMagic 
                var controller = new ScrollMagic.Controller();
                
                var tl = new TimelineMax();
                tl.to("#js-home-sections", 1, {xPercent: -16.67});
                tl.from("#title_2", 0.5, { opacity: 0, scale: 2.5}, "-=1");
                tl.to("#js-home-sections", 1, { xPercent: -33.32 });

                tl.from("#card_app", 0.5, { opacity: 0, xPercent: 100 }, "-=1.9");
                tl.from("#card_watch", 0.5, {  opacity: 0, xPercent: 800 }, "-=1.7");
                tl.from("#card_kiosk", 0.5, {  opacity: 0, xPercent: 1500 }, "-=1.5");
     
                tl.to("#js-home-sections", 1, { xPercent: -49.98});
                tl.to("#js-home-sections", 1, { xPercent: -66.64});
                tl.to("#js-home-sections", 1, { xPercent: -83.30});
                

                 // tl.from("#title_money", 0.5, { xPercent: 0 }, "-=1");
                // tl.from("#sm_links", 0.5, { xPercent: 200 }, "-=1");
                // tl.from("#sm_content", 0.5, { xPercent: 300 }, "-=1");

                // create scene to pin and link animation
                new ScrollMagic.Scene({
                    triggerElement: "#js-home-wrapper",
                    triggerHook: "onLeave",
                    duration: "600%"
                })
                .setPin("#js-home-wrapper")
                .setTween(tl)
                .addTo(controller);
            }
        });
        var width = $(window).width();
        
        if( width >= 992 ) {
            // ScrollMagic 
            var controller = new ScrollMagic.Controller();
            
            var tl = new TimelineMax();
            tl.to("#js-home-sections", 1, {xPercent: -16.67});
            tl.from("#title_2", 0.5, { opacity: 0, scale: 2.5}, "-=1");
            tl.to("#js-home-sections", 1, { xPercent: -33.32 });

            tl.from("#card_app", 0.5, { opacity: 0, xPercent: 100 }, "-=1.9");
            tl.from("#card_watch", 0.5, {  opacity: 0, xPercent: 800 }, "-=1.7");
            tl.from("#card_kiosk", 0.5, {  opacity: 0, xPercent: 1500 }, "-=1.5");
 
            tl.to("#js-home-sections", 1, { xPercent: -49.98});
            tl.to("#js-home-sections", 1, { xPercent: -66.64});
            tl.to("#js-home-sections", 1, { xPercent: -83.30});
            

             // tl.from("#title_money", 0.5, { xPercent: 0 }, "-=1");
            // tl.from("#sm_links", 0.5, { xPercent: 200 }, "-=1");
            // tl.from("#sm_content", 0.5, { xPercent: 300 }, "-=1");

            // create scene to pin and link animation
            new ScrollMagic.Scene({
                triggerElement: "#js-home-wrapper",
                triggerHook: "onLeave",
                duration: "600%"
            })
            .setPin("#js-home-wrapper")
            .setTween(tl)
            .addTo(controller);
        }

		// wipes container
		// var wipeAnimation = new TimelineMax()
		// 	.fromTo(".hs1", 1, {x: "100%"}, {x: "0%", ease: Linear.easeNone})  // in from left
		// 	.fromTo(".hs2", 1, {x: "100%"}, {x: "0%", ease: Linear.easeNone})  // in from right
		// 	.fromTo(".hs3", 1, {x: "100%"}, {x: "0%", ease: Linear.easeNone}); // in from top
        //  .fromTo(".hs4", 1, {x: "100%"}, {x: "0%", ease: Linear.easeNone}); // in from top
         // .fromTo(".hs5", 1, {x: "100%"}, {x: "0%", ease: Linear.easeNone}); // in from top

		// // create scene to pin and link animation
		// new ScrollMagic.Scene({
		// 	triggerElement: "#pinContainer",
		// 	triggerHook: "onLeave",
		// 	duration: "500%"
		// })
		// .setPin("#pinContainer")
		// .setTween(wipeAnimation)
		// .addIndicators() // add indicators (requires plugin)
		// .addTo(controller);

        // banner_title
        // create a scene
            

        $('#leading_pharmacy_slider').slick({
            slidesToShow: 2,
            slidesToScroll: 1,
            autoplay: false,
            autoplaySpeed: 2000,
            centerPadding: '30px',
            variableWidth: true,
            cssEase: 'linear',
            dots: true,
            appendDots:'#lp_dots_container',
            responsive: [{
                breakpoint: 991,
                settings: {
                    mobileFirst: true,
                }
            }]
        });

        $('[data-toggle="tooltip"]').tooltip()

	}(jQuery));
	

</script>
<?php
get_footer();
?>
