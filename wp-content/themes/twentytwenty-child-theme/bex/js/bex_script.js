jQuery(document).ready(function(){
    jQuery('#btn_partner').on("click", function(){
        jQuery('#btn_partner').hide();
        jQuery('#pt_menu').css({
            'visibility':'visible',
            'width' : '345',
            'right': '-345px',
            'opacity': '1',
            'transition':'all linear 0.5s'});
    });
    jQuery('#pt_close').on("click",function(){
        // jQuery('#pt_menu').removeClass('show');
        jQuery('#pt_menu').css({
            'visibility':'hidden',
            'width' : '0',
            'right': '-345px',
            'opacity': '0',
            'transition':'all linear 0s'});
        jQuery('#btn_partner').show();
    });

    // footer app links open
    jQuery('#btn_download_app').on("click",function(){
        jQuery('#apps_nav_wrapper').css({
            'visibility' : 'visible',
            'top' : '-60px',
            'display': 'flex'
        });
        jQuery('#menu_footer_apps').addClass('app-overlay');
        jQuery('body').css({
            'overflow' : 'hidden',
        });
    });
    // footer app links close
    jQuery('#btn_close_app').on("click",function(){
        jQuery('#apps_nav_wrapper').css({
            'visibility' : 'hidden',
            'top' : '0',
            'display': 'none'
        });
        jQuery('#menu_footer_apps').removeClass('app-overlay');
        jQuery('body').css({
            'overflow' : 'auto',
        }); 
    });
    
    // footer social links open
    jQuery('#btn_social').on("click",function(){
        jQuery('#social_nav_wrapper').css({
            'visibility' : 'visible',
            'top' : '-290px',
            'display': 'flex'
        });
        jQuery('#menu_footer_social').addClass('social-overlay');
        jQuery('body').css({
            'overflow' : 'hidden',
        });
    });
    // footer social links close
    jQuery('#btn_close_social').on("click",function(){
        jQuery('#social_nav_wrapper').css({
            'visibility' : 'hidden',
            'top' : '0',
            'display': 'none'
        });
         jQuery('#menu_footer_social').removeClass('social-overlay');
         jQuery('body').css({
            'overflow' : 'auto',
        });
    });
   
});

// jQuery(document).ready(function(){
//     jQuery('#btn_partner').click(function () {
//         // jQuery('#pt_menu').hide('slide', {direction: 'left'}, 1400);
//        jQuery('#pt_menu').stop().show('slide', {direction: 'left'}, 1400);
//    });
// });

