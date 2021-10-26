<?php
/**
* Template Name: Home Page
*/

get_header();

?>

<div id="js-home-wrapper" class="page-home-wrapper">
	<div id="js-home-sections" class="home-sections">
		<section class="home-section panel home-banner">
			<!-- web view -->
			<img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/banner_home_v2.svg" alt="" class="img-full d-lg-block d-none">
            <!-- ipad view -->
            <img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_home_ipad.svg" alt="" class="img-full d-lg-none d-md-block d-none">
			<!-- mobile view -->
			<img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_home_mobile.svg" alt="" class="img-full d-md-none">

			<div class="container banner-contents">
				<div class="row">
					<div class="col-12 text-center">
						<div class="title-wrapper">
							<h1 class="title"><span class="r-pink">Leading Pharmacy <br/></span><span class="r-pink"> Innovation</span></h1>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="home-section hs2 bg-white">
			<div class="container" id="pinContainer">
				<div class="row">
					<div class="col-md-6">
						<h2>Leading Pharmacy <br/>with Innovation</h2>
					</div>
					<div class="col-md-6">
						<div class="card-deck flex-md-column">
							<div class="card mb-md-4">
								<img src="..." class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
								</div>
								<div class="card-footer">
									<small class="text-muted">Last updated 3 mins ago</small>
								</div>
							</div>
							<div class="card mb-md-4">
								<img src="..." class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
								</div>
								<div class="card-footer">
									<small class="text-muted">Last updated 3 mins ago</small>
								</div>
							</div>
							<div class="card mb-md-4">
								<img src="..." class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
								</div>
								<div class="card-footer">
									<small class="text-muted">Last updated 3 mins ago</small>
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
		<section class="home-section bg-white hs5">
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
    jQuery(function () {
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
	});
	
</script>
<?php
get_footer();
?>
