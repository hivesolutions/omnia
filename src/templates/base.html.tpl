<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Frontdoor . Address book</title>

<style type="text/css">

body {
	margin: 0px 0px 0px 0px;
	font-family: 'Open Sans', Helvetica, Arial, sans-serif;
	font-weight: 100;
	letter-spacing: 0.06em;
	background-color: #fafafa;
}

h1, h2, h3, p, ul, ul li {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
}

ul li {
	list-style: none;
}

input {
	font-family: 'Open Sans', Helvetica, Arial, sans-serif;
	font-weight: 100;
}

a{
	text-decoration: none;
	color: #2398cc;
	transition: color 0.2s;
	-moz-transition: color 0.2s; /* Firefox 4 */
	-webkit-transition: color 0.2s; /* Safari and Chrome */
	-o-transition: color 0.2s; /* Opera */
}

a:hover{
	color: #00439e;
}

.clear {
	clear: both;
}

/* -- */

.wrapper{
	min-width: 960px;
}

.column {
	float: left;
}

.header{
	height: 68px;
	box-sizing: border-box;
	background-color: #333333;
	
}

.content .column {
	float: left;
	overflow: hidden;
}

.column.branding{
	height: 48px;
	width: 180px;
	margin: 10px 10px 0px 10px;
	opacity: 0.5;
	background: transparent url(static/images/branding.png) no-repeat left top;
	cursor: pointer;
	transition: opacity 0.2s;
	-moz-transition: opacity 0.2s; /* Firefox 4 */
	-webkit-transition: opacity 0.2s; /* Safari and Chrome */
	-o-transition: opacity 0.2s; /* Opera */
}

.column.branding:hover {
	opacity: 1;
}

.column.search{
	height: 48px;
	width: 22%;
	min-width: 230px;
	margin: 10px 0px 0px 0px;
	background-color: #FFF;
}

.header .column.search input{
	height: 48px;
	width: 100%;
	padding: 0px 0px 0px 10px;
	border: none;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	font-size: 20px;
	font-weight: 200;
	color: #CCC;
	background: #ffffff url(static/images/icon-search.png) no-repeat right top;
}

.header .column.search input:focus {
	color: #333333;
	font-weight: 200;
	background-position: bottom right;
	outline: none;
}

.header h1{
	float: right;
	margin: 10px 10px 0px 0px;
	font-size: 20px;
	font-weight: lighter;
	line-height: 48px;
	color: #cccccc;
}


.column.sections{
	height: 20px;
	width: 200px;
	background-color: #e6e6e6;
}

.content .column.sections ul.list li {
	height: 63px;
	padding-left: 24px;
	font-size: 24px;
	line-height: 64px;
	font-weight: 100;
	color: #666666;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	transition: background-color 0.2s;
	-moz-transition: background-color 0.2s; /* Firefox 4 */
	-webkit-transition: background-color 0.2s; /* Safari and Chrome */
	-o-transition: background-color 0.2s; /* Opera */
}

.content .column.sections ul.list li:hover {
	color: #ffffff;
	background-color: #cccccc;
}

.content .column.sections ul.list li.active {
	color: #2398cc;
	background-color: #f2f2f2;
}




.column.results{
	height: 20px;
	width: 22%;
	min-width: 230px;
	background: #f2f2f2 url(static/images/shadow-right.png) repeat-y left top;
	overflow: auto;
	/*background-color: #F96;*/
}

.column.results ul.list li {
	height: 63px;
	padding: 10px 0px 0px 20px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	border-bottom: 1px solid #e6e6e6;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	transition: background-color 0.1s;
	-moz-transition: background-color 0.1s; /* Firefox 4 */
	-webkit-transition: background-color 0.1s; /* Safari and Chrome */
	-o-transition: background-color 0.1s; /* Opera */
}

.column.results ul.list li.separator {
	font-size: 22px;
	color: #999999;
	cursor: default;
}

.column.results ul.list li.separator:hover,
.column.results ul.list li.separator.active {
	color: #999999;
	border-bottom: 1px solid #e6e6e6;
	background: none;
	box-shadow: 0px 0px 0px #999999;
	cursor: default;
}

.column.results ul.list li h3 {
	font-size: 17px;
	font-weight: 100;
	color: #414141;
}

.column.results ul.list li p {
	font-size: 12px;
	color: #7d7d7d;
}

.column.results ul.list li:hover {
	color: #ffffff;
	background-color: #cccccc;
	
}

.column.results ul.list li:hover h3,
.column.results ul.list li:hover p {
	color: #ffffff;
}

.column.results ul.list li.active {
	color: #ffffff;
	background: #2398cc url(static/images/highlight-background.png) repeat-x left top;
	border-bottom-color: #2398cc;
	box-shadow: 0px 0px 6px #999999;
}

.column.results ul.list li.active h3,
.column.results ul.list li.active p {
	color: #ffffff;
}




.column.details{
	height: 20px;
	min-width: 530px;
	overflow: auto;
	/*background-color: #3FF;*/
}

.column.details .details-content{
	width: 100%;
	min-width: 490px;
	margin-top: 30px;
	/*background-color: #C00;*/
}

.column.details .details-header{
	min-width: 490px;
	margin: 20px 0px 40px 0px;
	/*background-color: #FCF;*/
}

.column.details .details-header .picture{
	float: left;
	width: 30%;
	max-width: 200px;
	min-width: 140px;
	text-align: right;
	/*background-color: #F09;*/
}

.column.details .details-header .picture img{
	width: 90%
}

.column.details .details-header .title{
	float: left;
	width: 60%;
	min-width: 200px;
	margin-left: 24px;
}

.column.details .details-header .title h2 {
	font-size: 44px;
	font-weight: 700;
	color: #4d4d4d;
}

.column.details .details-header .title p {
	font-size: 18px;
	color: #6d6d6d;
}

.column.details .details-header ul.tags {
	margin-top: 10px;
}

.column.details .details-header ul.tags li {
	float: left;
	padding: 4px 8px 4px 8px;
	margin-right: 6px;
	font-size: 11px;
	line-height: 12px;
	text-transform: uppercase;
	color: #ffffff;
	background-color: #9CD6F0;
	border-radius: 4px 4px 4px 4px;
	cursor: default;
}




.content-block {
	min-width: 490px;
	margin-bottom: 30px;
	/*background-color: #CC3;*/
}

.content-block .label {
	float: left;
	width: 30%;
	max-width: 200px;
	min-width: 140px;
	text-align: right;
	font-size: 12px;
	text-transform: uppercase;
	line-height: 31px;
	color: #999999;
}

.content-block .value {
	float: left;
	width: 60%;
	max-width: 500px;
	margin-left: 24px;
	font-size: 16px;
	line-height: 30px;
	color: #6d6d6d;
}







.options-block {
	padding: 0px 0px 60px 0px;
	-webkit-user-select: none;
	-moz-user-select: none;
}

.options-block ul {
	border-top: 1px dotted #e6e6e6;
	padding: 10px 0px 0px 10px;
}

.options-block ul li {
	float: left;
	margin-right: 20px;
	padding-left: 20px;
	font-size: 13px;
	line-height: 16px;
	color: #999999;
	cursor: pointer;
	background-position: left top;
	background-repeat: no-repeat;
	transition: color 0.2s;
	-moz-transition: color 0.2s; /* Firefox 4 */
	-webkit-transition: color 0.2s; /* Safari and Chrome */
	-o-transition: color 0.2s; /* Opera */
}

.options-block ul li:hover {
	color: #4d4d4d;
	background-position: left -16px;
}

.options-block ul li.print {
	background-image: url('static/images/icon-printer.png');
}

.options-block ul li.save {
	background-image: url('static/images/icon-disk.png');
}

.options-block ul li.share {
	background-image: url('static/images/icon-share.png');
}



</style>

<script src="static/jquery/jquery-1.4.3.min.js" type="text/javascript"></script>

</head>

<body>

	<div class="wrapper">

		<div class="header">
			<h1>Address Book</h1>
			<div class="column branding"></div>
			<div class="column search">
				<input type="text" class="search-field" value="Search contacts" data-label="Search contacts" />
			</div>	
		</div>
	
		<div class="content">
	
			<div class="column sections">
				<ul class="list">
					<li>Employees</li>
					<li class="active">Supliers</li>
					<li>Customers</li>
				</ul>
			</div>
	
			<div class="column results">
				<ul class="list">
					<li class="separator">
						<h2>A</h2>
					</li>
					<li>
						<h3>Aarão Costa</h3>
						<p>aarao@live.com</p>
					</li>
					<li>
						<h3>Abel Pereira</h3>
						<p>abel-costa@hotmail.com</p>
					</li>
					<li>
						<h3>Abílio Soares</h3>
						<p>ab.soares@gmail.com</p>
					</li>
					<li>
						<h3>Abraão Silva</h3>
						<p>abrao345@sapo.pt</p>
					</li>
					<li>
						<h3>Acácio Prieto</h3>
						<p>acprieto@gmail.com</p>
					</li>
					<li class="active">
						<h3>Amilcar Oliveira</h3>
						<p>geral@amiliveira.com</p>
					</li>
					<li class="separator">
						<h2>B</h2>
					</li>
					<li>
						<h3>Baltasar Licínio</h3>
						<p>btr.licinio@gmail.com</p>
					</li>
					<li>
						<h3>Bárbara Seco</h3>
						<p>barbseco@mail.telepac.pt</p>
					</li>
					<li>
						<h3>Barnabé Lopes</h3>
						<p>bnb.lopes@gmail.com</p>
					</li>
					<li>
						<h3>Bartolomeu Torres</h3>
						<p>bartorres@sapo.pt</p>
					</li>
					<li>
						<h3>Basílio Horta</h3>
						<p>basilihorta@gmail.com</p>
					</li>
					<li>
						<h3>Batista Machado</h3>
						<p>batista.machado@hotmail.com</p>
					</li>
					<li class="separator">
						<h2>C</h2>
					</li>
					<li>
						<h3>Caetana Cunha</h3>
						<p>caetana-cunha@gmail.com</p>
					</li>
					<li>
						<h3>Caio Costa</h3>
						<p>caicosta@hotmail.com</p>
					</li>
					<li>
						<h3>Calisto Rocha</h3>
						<p>calisto-rocha@gmail.com</p>
					</li>
					<li>
						<h3>Calvino Sentado</h3>
						<p>calvino_sentado@sapo.pt</p>
					</li>
					<li>
						<h3>Camila Semedo</h3>
						<p>camila.semedo@iol.pt</p>
					</li>
					<li>
						<h3>Cândida Azevedo</h3>
						<p>candidazevedo@gmail.com</p>
					</li>
				</ul>
			</div>
	
			<div class="column details">
	
				<div class="details-header">
					<div class="picture">
						<!--<img src="static/images/dummy_logotype.png" height="160" width="160" alt="" />-->
						<img src="static/images/dummy_person.png" alt="" />
					</div>
					<div class="title">
						<h2>Amilcar Oliveira, Lda</h2>
						<p>Comércio de Materiais e Objectos</p>
						<ul class="tags">
							<li>Materiais</li>
							<li>Objectos</li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
	
				<div class="details-content">

					<!-- Content block -->
					<div class="content-block">
						<div class="label">Address</div>
						<div class="value">
							Rua de Santa Catarina, 520<br />
							4000-565 Porto
						</div>
						<div class="clear"></div>
					</div>
		
					<!-- Content block -->
					<div class="content-block">
						<div class="label">Phones</div>
						<div class="value">
							22 856 65 23<br />
							22 856 65 24
						</div>
						<div class="clear"></div>
					</div>
		
					<!-- Content block -->
					<div class="content-block">
						<div class="label">Website</div>
						<div class="value">
							<a href="http://amgomes.com">http://amiliveira.com</a>
						</div>
						<div class="clear"></div>
					</div>
		
					<!-- Content block -->
					<div class="content-block">
						<div class="label">Email</div>
						<div class="value">
							<a href="mailto:amiliveira@gmail.com">geral@amiliveira.com</a>
						</div>
						<div class="clear"></div>
					</div>
		
					<!-- Content block -->
					<div class="content-block">
						<div class="label">Observations</div>
						<div class="value">
							Babelverse is the first solution for universal speech translation, 
							powered by a global community of human interpreters.
							It's both a mobile and web app that will bring on-the-spot 
							interpretation to people in any of the world's spoken languages.
						</div>
						<div class="clear"></div>
					</div>
		
					<!-- Content block -->
					<div class="content-block">
						<div class="label">&nbsp;</div>
						<div class="value">
							<div class="options-block">
								<ul>
									<li class="print">Print</li>
									<li class="save">Save</li>
									<li class="share">Share</li>
								</ul>
							</div>
						</div>
						<div class="clear"></div>
					</div>
					<!-- Options block -->
					

				</div>
	
			</div>
	
			<div class="clear"></div>
	
		</div>

	</div>

	<script type="text/javascript">

		function updateLayout(){

			// Widths
			var windowWidth= $(this).width();
			var sectionsColumnWidth= $('.column.sections').width();
			var resultsColumnWidth= $('.column.results').width();
			var detailsColumnWidth= (windowWidth) - (sectionsColumnWidth + resultsColumnWidth);

			$('.column.details').width(detailsColumnWidth-1);

			// Heights
			var headerHeight= $('.header').height();
			var windowHeight= $(this).height();
			var maxHeight= (windowHeight - headerHeight);

			$('.column.sections').height(maxHeight);
			$('.column.results').height(maxHeight);
			$('.column.details').height(maxHeight);

		}

		$(window).resize(function(){

			updateLayout();

		});

		$(document).ready(function(){

			// Update layout
			updateLayout();

			// Initialize search field
			$('.search-field').focus(function(){

				if($(this).val() == $(this).attr('data-label')){
					$(this).val('');
				}

			}).blur(function(){

				if(!$(this).val()){
					$(this).val($(this).attr('data-label'));
				}

			});

			// Initialize sections
			$('.column.sections .list li').click(function(){
				$('.column.sections .list li.active').removeClass('active');
				$(this).addClass('active');
			});

			// Initialize results
			$('.column.results .list li').click(function(){
				$('.column.results .list li.active').removeClass('active');
				$(this).addClass('active');
			});

		})

	</script>

</body>
</html>
