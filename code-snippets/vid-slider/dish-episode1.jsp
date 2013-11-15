<%
String imgHeader ="https://new.pamperedchef.com/iceberg/cc/tr/td/tr-td-hd-229.gif";
String defaultHeadline = "test headline";
String defaultBody = "test body";
String defaultVid = "V0415-Clip-One";
%>
<%--
***DO NOT EDIT BELOW UNLESS NEEDED...rj
--%>
<link rel="stylesheet" type="text/css" href="/inc/reset.css" />
<link rel="stylesheet" type="text/css" href="/css/wm_cc.css" />
<link rel="stylesheet" type="text/css" href="/css/pamperedchef_cc.css" media="screen" />
<style type="text/css">
#container {
	width:750px;
	margin:9px auto 50px;
	font: normal 12px/18px Arial, Verdana, Helvetica, sans-serif;
	text-align:left;
	position:static!important;
	overflow:visible;
	color:#666666;
}
.insideLeftCol {
	margin:10px 12px 5px 14px;
}
.leftCol {
	border:5px solid #efefef;
	float:left;
	margin:0 6px 0 0;
}
.leftCol .insideLeftCol {
	margin:5px 10px 10px 5px;
	width:448px;
}
h1 {
	margin:0 0 8px 0;
}
#container p {
	margin:0 0 1.2em 0;
}
.rightCol {
	border:5px solid #efefef;
	float:left;
	margin:0 0 8px 0;
	width:210px;
}
.rightCol h2 {
	background:#7ac142;
	display:block;
	padding:1px 0 1px 0;
}
.rightCol h2 span {
	color:#fff;
	display:block;
	font:bold 14px/16px Arial, Helvetica, sans-serif;
	margin:20px 0 15px 20px;
}
.rightCol2 {
	border:2px solid #efefef;
	float:left;
	padding:0 0 5px 0;
	width:218px;
	display:none;
}
.section {
	display:block;
	border: 1px solid #ede9db;
	border-top: 1px dotted #615e5c;
	border-top: none;
	padding:14px 12px 5px 10px;
}
#container h2 {
	font:normal 20px/22px Arial, Verdana, Helvetica, sans-serif;
	display:block;
	margin:0 0 15px 0;
}
#container h3 {
	margin:0 0 15px 0;
}
sup small {
	vertical-align:super;
}
h5 span {
	color: #265580!important;
	font:bold 14px/14px Arial, Verdana, Helvetica, sans-serif;
}
html, body {
	background:none!important;
}
.mainContentFill {
	background: none!important;
}
.headerLinks a {
	margin-right: 0px;
}
.mainContentRight {
	margin-top:-64px!important;
}
</style>
<div id="container" class="mainContentFill">
  <div class="wmcss">
    <div class="section" style="border-top:1px solid #ede9db; overflow:visible;">
      <div style="background:url(<%=imgHeader%>) 0 0 no-repeat; height:59px; text-indent:-999em;"></div>
      <div class="mainContentLeft" style="min-height:275px;margin-right:65px;width:220px;">
        <h3><%=defaultHeadline%></h3>
        <p class="bigBodyText"><%=defaultBody%></p>
      </div>
      <div class="mainContentRight">
        <div id="hiddenMovContainer">
          <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="412" height="232" id="FlashID" title="Get More Bookings" style="visibility: inherit; ">
            <param name="movie" value="http://pamperedchef.s3.amazonaws.com/video/strobe_player.swf">
            <param name="quality" value="high">
            <param name="wmode" value="opaque">
            <param name="swfversion" value="9.0.45.0">
            <param name="expressinstall" value="/js/expressInstall.swf">
            <param name="flashvars" value="src=http://pamperedchef.s3.amazonaws.com/video/<%=defaultVid%>.f4v&poster=http://pamperedchef.s3.amazonaws.com/video/stills/<%=defaultVid%>.jpg&amp;autoPlay=false&amp;fileMissingText=Video File Not Found">
            <!--[if !IE]>-->
            <object type="application/x-shockwave-flash" data="http://pamperedchef.s3.amazonaws.com/video/strobe_player.swf" width="412" height="232">
              <!--<![endif]--> 
              <img src="https://pamperedchef.s3.amazonaws.com/video/stills/<%=defaultVid%>.jpg" width="412" height="232"/><br/>
              <a href="http://pamperedchef.s3.amazonaws.com/video/<%=defaultVid%>.mp4" target="_blank">Download video to your computer</a><br/>
              <br/>
              <param name="quality" value="high">
              <param name="wmode" value="opaque">
              <param name="swfversion" value="9.0.45.0">
              <param name="expressinstall" value="/js/expressInstall.swf">
              <param name="flashvars" value="src=http://pamperedchef.s3.amazonaws.com/video/<%=defaultVid%>.f4v&poster=http://pamperedchef.s3.amazonaws.com/video/stills/<%=defaultVid%>.jpg&amp;autoPlay=false&amp;fileMissingText=Video File Not Found">
              <!--[if !IE]>-->
            </object>
            <!--<![endif]-->
          </object>
        </div>
      </div>
      <div class="videoControls pageControlsContainerBottom">
        <div class="availVids">Available Videos</div>
      </div>
      <div class="singleSlider"> 
        <!-- Begin Recipes Slider -->
        <div class="recipeSlider"> <a class="goLeft" id="recipeGoLeft"></a> <a class="goRight" id="recipeGoRight"></a>
          <div class="sliderContainer">
            <%@ include file="slider.jsp" %>
          </div>
        </div>
        <!-- End Recipes Slider --> 
      </div>
      <div class="clearfloat"></div>
    </div>
  </div>
</div>
<script type="text/javascript">
jQuery(document).ready(function(){
/*****START SLIDERS*****/

		/**SET CLONE/PREP**/
		if(jQuery(".sliderContainer").length){
			jQuery(".sliderContainer").each(function(){
				
				jQuery(this).parent().children(".goLeft").bind("click",startLeft);
				jQuery(this).parent().children(".goRight").bind("click",startRight);
				function cloneItems(){
					sliderulli.eq(0).clone(true).appendTo(sliderul);
					sliderulli.eq(0).next().clone(true).appendTo(sliderul);
					if (numberOfItemsDisplayed >= 3){
						sliderulli.eq(0).next().next().clone(true).appendTo(sliderul); //3rd Item Add
					}
					if (numberOfItemsDisplayed >= 4){
						sliderulli.eq(0).next().next().next().clone(true).appendTo(sliderul); //4th Item Add
					}
				}
				function animateRight(whichone){
					whichone.parent().children(".sliderContainer").children("ul").animate({
							marginLeft: '-='+(itemFullWidth)
							}, animateTime, function() {
								whichone.bind("click",startRight);	
					});
				}
				function animateLeft(whichone){
					whichone.parent().children(".sliderContainer").children("ul").animate({
						marginLeft: '+='+(itemFullWidth)
						}, animateTime, function() {
						whichone.bind("click",startLeft);
					});
				}
				function startRight(){
					jQuery(this).unbind("click",startRight);	
					if ((sliderCount<(sliderNumber-numberOfItemsDisplayed))){
						sliderCount++;
					}
					else if(sliderCount==(sliderNumber-numberOfItemsDisplayed)){
						jQuery(sliderul).css("margin-left", 0);
						sliderCount = 1;
					}
					animateRight(jQuery(this));
				}
				function startLeft(){
					jQuery(this).unbind("click",startLeft);
					if (sliderCount>0){
					sliderCount--;
					}
					else if(sliderCount==0){
						jQuery(sliderul).css("margin-left", -(fullWidth-(numberOfItemsDisplayed*itemFullWidth)));
						sliderCount = sliderNumber-numberOfItemsDisplayed-1;
					}
					animateLeft(jQuery(this));
				}
				
				var	numberOfItemsDisplayed;
				var sliderContainerWidth = parseInt(jQuery(this).css("width"));
				var sliderul = jQuery(this).children("ul");
				var sliderulli = jQuery(this).children("ul").children("li");
				var sliderNumber = sliderulli.size();//pre-clone size
				var animateTime = 200; //standard animation time
				
				//PWS Home
				if (sliderContainerWidth == 268){
					numberOfItemsDisplayed = 2;
					cloneItems();
				}
				//Theme Slider (B20)
				if (sliderContainerWidth == 364){
					numberOfItemsDisplayed = 2;
					cloneItems();
				}
				//WM slider (3 col)
				if (sliderContainerWidth == 402){
					numberOfItemsDisplayed = 3;
					cloneItems();
				}
				//WM slider (3 col).  400 width container.  Added 2/27/12                     
                if (sliderContainerWidth == 400){
                      numberOfItemsDisplayed = 3;
                      cloneItems();
                }
                //End 2/27/12 Change
				
				//Set standard 3 width
				if (sliderContainerWidth == 415){
					numberOfItemsDisplayed = 3;
					cloneItems();
				}
				//Product detail little guy
				if (sliderContainerWidth == 180){
					numberOfItemsDisplayed = 3;
					animateTime = 100;
					if(sliderNumber < 4){
						jQuery("#productGoLeft").hide();
						jQuery("#productGoRight").hide();	
					}
					else{cloneItems();}
				}
				//Tips recipes
				if (sliderContainerWidth == 600){
					numberOfItemsDisplayed = 4;
					if(sliderNumber < 5){
						jQuery("#recipeGoLeft").hide();
						jQuery("#recipeGoRight").hide();	
						jQuery(sliderul).parent().addClass("centered");	
					}
					else{cloneItems();}
				}			
				
				sliderNumber = jQuery(this).children("ul").children("li").size();//post-clone size
				var itemWidth = parseInt(jQuery(sliderulli).css("width"));
				var itemMarginR = parseInt(jQuery(sliderulli).css("margin-right"));
				var itemPaddingR = parseInt(jQuery(sliderulli).css("padding-right"));
				var itemPaddingL = parseInt(jQuery(sliderulli).css("padding-left"));
				var itemFullWidth=itemWidth+itemMarginR+itemPaddingR+itemPaddingL;
				var fullWidth = itemFullWidth*sliderNumber;
				var sliderCount = 0;
				jQuery(sliderul).css("width", fullWidth);
				
			});//close each
		}
	/*****END SLIDERS*****/
});
</script> 
<script type="text/javascript">
jQuery(document).ready(function($){  
			$("#rolloverBanner a").click(function(){
			var imgTitle = $(this).children(1).text(); 
			var hiddenMovie = $(this).next().next().html(); 
			var imgText = $(this).text();
			  $("#rolloverBanner li").removeClass("selected");
			  $(this).parent().addClass("selected");
			var htmlStr = $(this).next().html();
		$('.bigBodyText').html(htmlStr);
		$(".mainContentRight #hiddenMovContainer").stop().fadeTo(200, 0, function(){
		$('.mainContentRight #hiddenMovContainer').html(hiddenMovie);
		$('.mainContentLeft h3').text(imgTitle);
		}).fadeTo("slow", 1); 
		return false;
	});
});
</script>
<style type="text/css">
.hiddenText1, .hiddenText2, .hiddenText3, .hiddenText4, .hiddenText5, .hiddenMovie1, .hiddenMovie2, .hiddenMovie3, .hiddenMovie4, .hiddenMovie5{
display:none;
}
</style>
