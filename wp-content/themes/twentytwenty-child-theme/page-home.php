<?php
/**
* Template Name: Home Page
*/

get_header();

?>

<div id="js-home-wrapper" class="page-home-wrapper">
	<div id="js-home-sections" class="home-sections">
		<section class="home-section hs1 panel home-banner">
			<!-- web view -->
			<img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/banner_home_v2.png" alt="" class="img-full d-lg-block d-none">
            <!-- ipad view -->
            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_home_ipad.png" alt="" class="img-full d-lg-none d-md-block d-none">
			<!-- mobile view -->
			<img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_home_mobile.png" alt="" class="img-full d-md-none">
            <div class="container banner-contents" data-scroll-sticky id="banner_title">
				<div class="row">
					<div class="col-12 text-center">
						<div class="title-wrapper">
							<h1 class="title"><span class="r-pink">Leading Pharmacy <br/></span><span class="r-pink"> Innovation</span></h1>
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
		<section class="home-section hs2 section-leading-pharmacy bg-white" id="section_leading_pharmacy">
			<div class="container" id="pinContainer">
				<div class="row">
					<div class="col-md-6 ">
                        <div class="title-wrapper">
    						<h2 class="title"><span class="r-pink">Leading Pharmacy <br/></span><span class="r-pink"> Innovation</span></h2>
                        </div>
					</div>
					<div class="col-md-6">
						<div class="card-deck flex-md-column">
							<div class="card mb-md-4 card-app" style="background-image: url('<?php echo get_home_url()?>/wp-content/uploads/2021/10/health_app_bg.svg');">
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
                            <div class="card mb-md-4 card-watch" style="background-image: url('<?php echo get_home_url()?>/wp-content/uploads/2021/10/health_watch_bg.svg');">
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
                            <div class="card mb-md-4 card-kiosk" style="background-image: url('<?php echo get_home_url()?>/wp-content/uploads/2021/10/connect_kiosk_bg.svg');">
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
				</div> 
			</div>
		</section>
		<section class="home-section hs3 bg-red">
			<h1>three</h1>
		</section>
		<section class="home-section hs4 bg-green">
			<h1>Four</h1>
		</section>
		<section class="home-section hs5 bg-white">
			<div class="conatiner">
				<div class="row">
					<div class="col-12">
						<h1>Five</h1>
					</div>
				</div>
			</div>
			
		</section>
	</div>
</div><!-- #site-content -->

<script>
    (function ($) {
		var controller = new ScrollMagic.Controller();
		var tl = new TimelineMax();
		tl.to("#js-home-sections", 1, {xPercent: -20});
		tl.to("#js-home-sections", 1, {xPercent: -40});
		tl.to("#js-home-sections", 1, {xPercent: -60});
		tl.to("#js-home-sections", 1, {xPercent: -80});


		// create scene to pin and link animation
		new ScrollMagic.Scene({
			triggerElement: "#js-home-wrapper",
			triggerHook: "onLeave",
			duration: "600%"
		})
		.setPin("#js-home-wrapper")
		.setTween(tl)
		.addTo(controller);

		// wipes container
		// var wipeAnimation = new TimelineMax()
		// 	.fromTo(".p1", 1, {x: "100%"}, {x: "0%", ease: Linear.easeNone})  // in from left
		// 	.fromTo(".p2", 1, {x: "100%"}, {x: "0%", ease: Linear.easeNone})  // in from right
		// 	.fromTo(".p3", 1, {x: "100%"}, {x: "0%", ease: Linear.easeNone}); // in from top

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
            
       
            // init controller
        
	}(jQuery));
	

</script>
<?php
get_footer();
?>
