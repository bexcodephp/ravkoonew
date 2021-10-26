<?php
/**
 * Displays the menu icon and modal
 *
 * @package WordPress
 * @subpackage Twenty_Twenty
 * @since Twenty Twenty 1.0
 */

?>

<div class="menu-modal cover-modal header-footer-group" data-modal-target-string=".menu-modal">
	<div class="menu-modal-inner modal-inner" style="background-image: url('<?php echo get_home_url()?>/wp-content/uploads/2021/10/bg_menu_bar.png');">
        
		<div class="menu-wrapper section-inner container">
            <div class="row">

                <div class="col-lg-5 menu-top-wrapper">                
        			<div class="menu-top">

        				<button class="toggle close-nav-toggle close-menu" data-toggle-target=".menu-modal" data-toggle-body-class="showing-menu-modal" aria-expanded="false" data-set-focus=".menu-modal">
                            <i class="bi bi-x-lg"></i>
                        </button><!-- .nav-toggle -->

        				<?php

        				    $mobile_menu_location = '';

            				// If the mobile menu location is not set, use the primary and expanded locations as fallbacks, in that order.
            				if ( has_nav_menu( 'mobile' ) ) {
            					$mobile_menu_location = 'mobile';
            				} elseif ( has_nav_menu( 'primary' ) ) {
            					$mobile_menu_location = 'primary';
            				} elseif ( has_nav_menu( 'expanded' ) ) {
            					$mobile_menu_location = 'expanded';
            				}

            				if ( has_nav_menu( 'expanded' ) ) {

            					$expanded_nav_classes = '';

            					if ( 'expanded' === $mobile_menu_location ) {
            						$expanded_nav_classes .= ' mobile-menu';
            					}

            					?>

            					<nav class="expanded-menu<?php echo esc_attr( $expanded_nav_classes ); ?>" aria-label="<?php echo esc_attr_x( 'Expanded', 'menu', 'twentytwenty' ); ?>" role="navigation">

            						<ul class="modal-menu reset-list-style">
            							<?php
            							if ( has_nav_menu( 'expanded' ) ) {
            								wp_nav_menu(
            									array(
            										'container'      => '',
            										'items_wrap'     => '%3$s',
            										'show_toggles'   => true,
            										'theme_location' => 'expanded',
            									)
            								);
            							}
            							?>
            						</ul>

            					</nav>

            					<?php
            				}

            				if ( 'expanded' !== $mobile_menu_location ) {
            					?>

            					<nav class="mobile-menu" aria-label="<?php echo esc_attr_x( 'Mobile', 'menu', 'twentytwenty' ); ?>" role="navigation">

            						<ul class="modal-menu reset-list-style">

            						<?php
            						if ( $mobile_menu_location ) {

            							wp_nav_menu(
            								array(
            									'container'      => '',
            									'items_wrap'     => '%3$s',
            									'show_toggles'   => true,
            									'theme_location' => $mobile_menu_location,
            								)
            							);

            						} else {

            							wp_list_pages(
            								array(
            									'match_menu_classes' => true,
            									'show_toggles'       => true,
            									'title_li'           => false,
            									'walker'             => new TwentyTwenty_Walker_Page(),
            								)
            							);

            						}
            						?>

            						</ul>

            					</nav>

            					<?php
            				}
        				?>
        			</div><!-- .menu-top -->        			
                </div>
                
                <div class="col-xxl-4 col-xl-5 col-lg-7 menu-right-wrapper d-lg-block d-none">
                    <div class="menu-right">
                        <div class="menu-right-conents">
                            <h2 class="menu-title mb-md-5">MEET RAVKOO</h2>
                            <div class="meet-ravkoo">
                                <p class="mb-md-5">ravkooTM is a digital SaaS platform for prescription fulfillment, with over 400 distribution centers nationwide in over 110 major cities, providing free, same-day or next-day prescription delivery to patients’ doorsteps. At ravkooTM we strive to improve patient adherence through convenience, consultation, and affordability.</p>
                                <p class="mb-md-5">ravkooTM is fulfilling its mission by offering a software as a service (SaaS) platform that links doctors, pharmacists, and patients.</p>
                                <p class="mb-md-4">ravkooTM checks all cost saving options for the patient before contacting them with the price.</p>
                            </div>                            
                        </div>
                        <div class="location-wrapper">
                            <a href="<?php echo get_home_url()?>/location/" class="btn-location media"><img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/icon_location_pin.svg" class="mr-4">Where we deliver</a>
                        </div>
                    </div>
                </div>

                <div class="col-12 menu-bottom-wrapper d-none">
                    <div class="menu-bottom">

                        <?php if ( has_nav_menu( 'social' ) ) { ?>

                            <nav aria-label="<?php esc_attr_e( 'Expanded Social links', 'twentytwenty' ); ?>" role="navigation">
                                <ul class="social-menu reset-list-style social-icons">

                                    <?php
                                    wp_nav_menu(
                                        array(
                                            'theme_location'  => 'social',
                                            'container'       => '',
                                            'container_class' => '',
                                            'items_wrap'      => '%3$s',
                                            'menu_id'         => '',
                                            'menu_class'      => '',
                                            'depth'           => 1,
                                            'link_before'     => '<span class="screen-reader-text">',
                                            'link_after'      => '</span>',
                                            'fallback_cb'     => '',
                                        )
                                    );
                                    ?>

                                </ul>
                            </nav><!-- .social-menu -->

                        <?php } ?>

                    </div><!-- .menu-bottom -->
                </div>
            </div>
		</div><!-- .menu-wrapper -->

	</div><!-- .menu-modal-inner -->

</div><!-- .menu-modal -->
