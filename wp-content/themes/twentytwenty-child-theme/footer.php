<?php
/**
 * The template for displaying the footer
 *
 * Contains the opening of the #site-footer div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Twenty
 * @since Twenty Twenty 1.0
 */

?>
			<footer id="site-footer" role="contentinfo" class="header-footer-group">
				<div class="container">
					<div class="section-inner col-12 px-md-0">
						<!-- ========================================================================= -->
						<a class="to-the-top d-none" href="#site-header">
							<span class="to-the-top-long">
								<?php
								/* translators: %s: HTML character for up arrow. */
								printf( __( 'To the top %s', 'twentytwenty' ), '<span class="arrow" aria-hidden="true">&uarr;</span>' );
								?>
							</span><!-- .to-the-top-long -->
							<span class="to-the-top-short">
								<?php
								/* translators: %s: HTML character for up arrow. */
								printf( __( 'Up %s', 'twentytwenty' ), '<span class="arrow" aria-hidden="true">&uarr;</span>' );
								?>
							</span><!-- .to-the-top-short -->
						</a><!-- .to-the-top -->

						<!-- ========================================================================= -->
									<!-- UPDATES NEW FOOTER BELOW -->
						<!-- ========================================================================= -->
						<div class="footer-left d-lg-flex d-none" id="footer_left">
							<?php dynamic_sidebar( 'footer-1' ); ?>
							<div class="pt-link-wrapper">
                                <button type="button" class="btn btn-primary btn-partner" id="btn_partner">Partner<i class="bi bi-chevron-right ml-2"></i></button>
								<div class="pt-menu" id="pt_menu">
									<a href="" class="pt-link">Pharmacy | Telemedicine Company</a>
									<button type="button" class="btn btn-link" id="pt_close"><i class="bi bi-x-lg"></i></button>
								</div>
							</div>
						</div>
                        <!-- footer right -->
                        <div class="footer-right d-lg-flex d-none" id="footer_right">
                            <!-- Ravkoo download apps links -->
                            <div class="menu-footer-apps mr-4 position-relative" id="menu_footer_apps">
                                <div class="apps-nav-wrapper list-group list-group-horizontal" id="apps_nav_wrapper">
                                    <a href="#1" class="list-group-item list-group-item-action btn-app-apple" id="btn_app_apple"><img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/Appstore.svg"></a>
                                    <a href="#3" class="list-group-item list-group-item-action btn-app-android" id="btn_app_android"><img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/GooglePlay.svg"></a>
                                    <!-- close button apps -->
                                    <button type="button" class="list-group-item btn btn-link btn-close-app" id="btn_close_app"><i class="bi bi-x-lg"></i></button>
                                </div>
                                <button type="button" class="btn btn-primary btn-download-app" id="btn_download_app"><i class="bi bi-arrow-down-square-fill mr-2 mt-4"></i>Download Ravkoo Health</button>
                            </div>
                            <!-- Ravkoo social apps links -->
                            <div class="menu-footer-social position-relative" id="menu_footer_social">                                
                                <div class="social-nav-wrapper" id="social_nav_wrapper">
                                    <?php if ( has_nav_menu( 'social' ) ) { ?>
                                        <nav aria-label="<?php esc_attr_e( 'Expanded Social links', 'twentytwenty' ); ?>" role="navigation">
                                            <ul class="social-menu reset-list-style social-icons list-group">
                                                <?php
                                                    wp_nav_menu(
                                                        array(
                                                            'theme_location'  => 'social',
                                                            'container'       => '',
                                                            'container_class' => '',
                                                            'items_wrap'      => '%3$s',
                                                            'menu_id'         => '',
                                                            'menu_class'      => 'list-group-item',
                                                            'depth'           => 1,
                                                            'link_before'     => '<span class="screen-reader-text">',
                                                            'link_after'      => '</span>',
                                                            'fallback_cb'     => '',
                                                        )
                                                    );
                                                ?>
                                            </ul>
                                            <button type="button" class="btn btn-dark btn-close-social" id="btn_close_social"><i class="bi bi-x-lg"></i></button>
                                        </nav><!-- .social-menu -->
                                    <?php } ?>
                                </div>
                                <button type="button" class="btn btn-primary btn-social" id="btn_social"><img src="<?php echo get_home_url()?>/wp-content/uploads/2021/10/ri-heart-add-fill.svg"></button>
                            </div>
                        </div>
					</div><!-- .section-inner -->
				</div>
			</footer><!-- #site-footer -->
            
		<?php wp_footer(); ?>
	</body>
</html>
