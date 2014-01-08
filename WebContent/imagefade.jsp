<div class="ksk_flash" align="center">
<script type="text/javascript">

/*** 
    Simple jQuery Slideshow Script
    Released by Jon Raasch (jonraasch.com) under FreeBSD license: free to use or modify, not responsible for anything, etc.  Please link out to me if you like it :)
***/

function slideSwitch() {
    var $active = $('#slideshow IMG.active');

    if ( $active.length == 0 ) $active = $('#slideshow IMG:last');

    // use this to pull the images in the order they appear in the markup
    var $next =  $active.next().length ? $active.next()
        : $('#slideshow IMG:first');

    // uncomment the 3 lines below to pull the images in random order
    
    // var $sibs  = $active.siblings();
    // var rndNum = Math.floor(Math.random() * $sibs.length );
    // var $next  = $( $sibs[ rndNum ] );


    $active.addClass('last-active');

    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity: 1.0}, 3000, function() {
            $active.removeClass('active last-active');
        });
}

$(function() {
    setInterval( "slideSwitch()", 5000 );
});

</script>

<style type="text/css">
#slideshow {
    position:relative;
    height:450px;
	-moz-box-shadow: 0px 3px 5px #888;
-webkit-box-shadow: 0px 3px 5px #888;
box-shadow: 0px 3px 5px #999;
}

#slideshow IMG {
	position:absolute;
	top:0px;
	left:-2px;
	z-index:8;
	opacity:1.0;
width:100%;
height:450px;
}

#slideshow IMG.active {
    z-index:10;
    opacity:1.0;
}

#slideshow IMG.last-active {
    z-index:9;
}

</style>
<div id="slideshow"> 
<div>
    <img src="images/ksk-Head-4.jpg" border="0" >
    <img src="images/ksk-Head-2.jpg" border="0" class="active" >
    <img src="images/ksk-Head-3.jpg" border="0" >
</div>
</div>
<!--<div style="position:absolute;top:250px;left:14%;padding:10px 0 10px 2%; background:#FFF;opacity:0.5; font-size:30px;color:#333;width:80%;text-align:left; z-index:999999;text-transform:uppercase;">Kanka sports budokan karate Academy</div>-->
</div>