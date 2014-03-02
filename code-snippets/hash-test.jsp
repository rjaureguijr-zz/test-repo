<style type="text/css">
.activeSlide {
	background:yellow;
}
</style>
<div id="container">
  <h1>Hash Link Test To Beta</h1>
  <h4>Links Below</h4>
  <p class="p-test activeSlide"> <a href="http://new.pamperedchef.com/cc/rj-three-col-test#tab-1" target="_blank">1 tab test</a><br />
    <a href="http://new.pamperedchef.com/cc/rj-three-col-test#tab-2" target="_blank">2 tab test</a><br />
    <a href="http://new.pamperedchef.com/cc/rj-three-col-test#tab-3" target="_blank">3 tab test</a><br />
    <a href="http://new.pamperedchef.com/cc/rj-three-col-test#tab-4" target="_blank">4 tab test</a></p>
  <p><a href="http://new.pamperedchef.com/cc/promotions-calendar?url=http%3A%2F%2Fnew.pamperedchef.com" target="_blank">Test tab link (normal promo)</a></p>
  <p><a href="http://new.pamperedchef.com/cc/promotions-calendar?utm=test" target="_blank">Test tab link (normal promo)</a></p>
</div>
<%--<script type="text/javascript">
$(document).ready(function() {

var hash = window.location.hash.substr(1);
alert(hash);
/*start checks below*/

/*if (hash == '1-tab')
{
	$('div .slide1').removeClass('activeSlide');
	$('div .slide1').addClass('activeSlide');
$('div .p-test').addClass('activeSlide');
}
*/
if (hash == '2-tab')
{
	$('div .slide1').removeClass('activeSlide');
	$('div .slide2').addClass('activeSlide');/**/
/*$('div .h3-test').addClass('activeSlide');*/
}

if (hash == '3-tab')
/*then*/
{
	$('div .slide1').removeClass('activeSlide');
$('div .slide3').addClass('activeSlide');/**/
/*$('div .header').addClass('activeSlide');*/
}
});
</script>--%>