<!DOCTYPE html>
<html lang="pt-br">

<head>
	<title>Vanuza Esportes - {$PAGINA} </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="{$GET_TEMA}/assets/images/icons/favicon.png" />
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"
		href="{$GET_TEMA}/assets/fonts/iconic/css/material-design-iconic-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/fonts/linearicons-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/vendor/slick/slick.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/vendor/MagnificPopup/magnific-popup.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/vendor/perfect-scrollbar/perfect-scrollbar.css">

	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/css/main.css">
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/css/style.css">
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/css/efeitos.css">
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/css/share-bar.css">
	<!-- Carrinho -->
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/css/cart-1.css">
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/css/cart-3.css">
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/css/cart-4.css">
	<link rel="stylesheet" type="text/css" href="{$GET_TEMA}/assets/css/cart-5.css">

	<!-- Blog -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
	{$BLOG_CSS}
	{$RESPONSIVE_CSS}

	<!--===============================================================================================-->
</head>
<!-- Header -->
<header class="header-v2 border-bottom">
	<!-- Header desktop -->
	<div class="container-menu-desktop trans-03">
		<div class="wrap-menu-desktop ">
			<nav class="limiter-menu-desktop p-l-45">

				<!-- Logo desktop -->
				<a href="{$GET_HOME}" class="logo">
					<img src="{$GET_HOME}/media/img/seu-logo.png" alt="IMG-LOGO">
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">

						<li><a href='#'><i class="fa fa-male"></i> MASCULINO</a>
							<ul style="z-index:1000;" class='sub-menu'>
								{foreach from=$CATEGORIAS item=C}
								<form name="cate_masculino" method="post" action="{$C.cate_link}" class="hov-main">
									<input type="hidden" name="sub_masculino" value="{$C.cate_nome}">
									<li><button class="grey"><a>{$C.cate_nome}</a></button></li>
								</form>
								{/foreach}
							</ul>
						</li>

						<li><a href='#'><i class="fa fa-female"></i> FEMININO</a>
							<ul style="z-index:1000;" class='sub-menu'>
								{foreach from=$CATEGORIASFE item=F}
								<form name="cate_feminino" method="post" action="{$F.cate_link}" class="hov-main">
									<input type="hidden" name="sub_feminino" value="{$F.cate_nome}">
									<li><button class="grey"><a>{$F.cate_nome}</a></button></li>
								</form>
								{/foreach}
							</ul>
						</li>

						<li><a href='#'><i class="fa fa-child"></i> INFATIL</a>
							<ul style="z-index:1000;" class='sub-menu'>
								{foreach from=$CATEGORIASIN item=I}
								<form name="cate_infantil" method="post" action="{$I.cate_link}" class="hov-main">
									<input type="hidden" name="sub_infantil" value="{$I.cate_nome}">
									<li><button class="grey"><a>{$I.cate_nome}</a></button></li>
								</form>
								{/foreach}
							</ul>
						</li>

						<li><a href='#'><i class="fa fa-soccer-ball-o"></i> BOLAS</a>
							<ul style="z-index:1000;" class='sub-menu'>
								{foreach from=$CATEGORIASBO item=B}
								<form name="cate_bolas" method="post" action="{$B.cate_link}" class="hov-main">
									<input type="hidden" name="sub_bolas" value="{$B.cate_nome}">
									<li><button class="grey"><a>{$B.cate_nome}</a></button></li>
								</form>
								{/foreach}
							</ul>
						</li>

						<li>
							<a href="{$PAG_BLOG}"><i class="fa fa-newspaper-o"></i> Blog</a>
						</li>
						<li>
							<a href="{$PAG_CONTATO}"><i class="fa fa-envelope-o"></i> Contato</a>
						</li>
					</ul>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m h-full">
					<div class="flex-c-m h-full">
						<div class="icon-header-item cl2 hov-cl1 trans-04 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>
					</div>

					<div class="flex-c-m h-full p-l-18 bor5">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-5 icon-header-noti js-show-cart"
							data-notify="{$CONTAGEM}">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>
					</div>


					<div class="flex-c-m h-full p-l-18 bor5">
						<div class="icon-header-item cl2 hov-cl1 trans-04">
							<a href="{$PAG_MINHACONTA}"><i class="f-35 zmdi zmdi-account margin-top-negativo"></i>
							</a>
						</div>
					</div>

					<div class="flex-c-m h-full p-lr-19">
						<div class="icon-header-item cl2 hov-cl1 trans-04 js-show-sidebar">
							<i class="zmdi zmdi-menu f-30"></i>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="{$GET_HOME}"><img src="{$GET_HOME}/media/img/seu-logo.png" alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
			<div class="flex-c-m h-full p-r-10">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>
			</div>

			<div class="flex-c-m h-full p-lr-10 bor5">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
					data-notify="{$CONTAGEM}">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>
			</div>
		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box">
				<span class="hamburger-inner"></span>
			</span>
		</div>
	</div>

	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="main-menu-m bg-azul">

			<li>
				<a href='#'><i class="fa fa-male"></i> MASCULINO</a>
				<ul class="sub-menu-m">
					{foreach from=$CATEGORIAS item=C}
					<form name="cate_masculino" method="post" action="{$C.cate_link}" class="hov-main">
						<input type="hidden" name="sub_masculino" value="{$C.cate_nome}">
						<li><button class="grey"><a>{$C.cate_nome}</a></button></li>
					</form>
					{/foreach}
				</ul>
				<span class="arrow-main-menu-m">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
				</span>
			</li>

			<li>
				<a href='#'><i class="fa fa-female"></i> FEMININO</a>
				<ul class="sub-menu-m">
					{foreach from=$CATEGORIASFE item=F}
					<form name="cate_feminino" method="post" action="{$F.cate_link}" class="hov-main">
						<input type="hidden" name="sub_feminino" value="{$F.cate_nome}">
						<li><button class="grey"><a>{$F.cate_nome}</a></button></li>
					</form>
					{/foreach}
				</ul>
				<span class="arrow-main-menu-m">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
				</span>
			</li>

			<li>
				<a href='#'><i class="fa fa-child"></i> INFATIL</a>
				<ul class="sub-menu-m">
					{foreach from=$CATEGORIASIN item=I}
					<form name="cate_infantil" method="post" action="{$I.cate_link}" class="hov-main">
						<input type="hidden" name="sub_infantil" value="{$I.cate_nome}">
						<li><button class="grey"><a>{$I.cate_nome}</a></button></li>
					</form>
					{/foreach}
				</ul>
				<span class="arrow-main-menu-m">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
				</span>
			</li>

			<li>
				<a href='#'><i class="fa fa-soccer-ball-o"></i> BOLAS</a>
				<ul class="sub-menu-m">
					{foreach from=$CATEGORIASBO item=B}
					<form name="cate_bolas" method="post" action="{$B.cate_link}" class="hov-main">
						<input type="hidden" name="sub_bolas" value="{$B.cate_nome}">
						<li><button class="grey"><a>{$B.cate_nome}</a></button></li>
					</form>
					{/foreach}
				</ul>
				<span class="arrow-main-menu-m">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
				</span>
			</li>

			<li>
				<a href="{$PAG_BLOG}"><i class="fa fa-newspaper-o"></i> Blog</a>
			</li>

			<li>
				<a href="{$PAG_CONTATO}"><i class="fa fa-envelope-o"></i> Contato</a>
			</li>
			<hr>

			{if $LOGADO == true}
			<li>
				<a href="{$PAG_CONTA}"><i class="fa fa-user"></i> Minha Conta</a>
			</li>
			{else}
			<li>
				<a href="{$PAG_CONTA}"><i class="fa fa-user"></i> Entrar</a>
			</li>
			{/if}

		</ul>
	</div>

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img src="{$GET_TEMA}/assets/images/icons/icon-close2.png" alt="CLOSE">
			</button>

			<form class="wrap-search-header flex-w p-l-15" method="get" action="{$PAG_BUSCA}">
				<input class="plh3" type="text" name="s" placeholder="Buscar na loja...">
				<input type="hidden" name="p" value="1">
				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
			</form>
		</div>
	</div>
</header>

<!-- Sidebar -->
<aside class="wrap-sidebar js-sidebar animsition">
	<div class="s-full js-hide-sidebar"></div>

	<div class="sidebar flex-col-l p-t-22 p-b-25">
		<div class="flex-r w-full p-b-30 p-r-27">
			<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-sidebar">
				<i class="zmdi zmdi-close"></i>
			</div>
		</div>

		<div class="sidebar-content flex-w w-full p-lr-65 js-pscroll">
			<ul class="sidebar-link w-full">
				<li class="p-b-13">
					<a href="{$GET_HOME}" class="stext-102 cl2 hov-cl1 trans-04">
						Home
					</a>
				</li>
				{if $LOGADO == true}
				<li class="p-b-13">
					<a href="{$PAG_CLIENTE_FAVORITOS}" class="stext-102 cl2 hov-cl1 trans-04">
						Meus Favoritos
					</a>
				</li>
				
				<li class="p-b-13">

					<a href="{$PAG_CLIENTE_CONTA}" class="stext-102 cl2 hov-cl1 trans-04">
						Minha Conta
					</a>

				</li>
				
				<li class="p-b-13">
					<a href="{$PAG_CLIENTE_PEDIDOS}" class="stext-102 cl2 hov-cl1 trans-04">
						Meus Pedidos
					</a>
				</li>

				{/if}

				<li class="p-b-13">
					<a href="#" class="stext-102 cl2 hov-cl1 trans-04">
						Ajuda
					</a>
				</li>
			</ul>

			<div class="sidebar-gallery w-full p-tb-30">
				<span class="mtext-101 cl5">
					@ Seu ID
				</span>

				<div class="flex-w flex-sb p-t-36 gallery-lb">
					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="{$GET_TEMA}/assets/images/gallery-01.jpg"
							data-lightbox="gallery"
							style="background-image: url('{$GET_TEMA}/assets/images/gallery-01.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="{$GET_TEMA}/assets/images/gallery-02.jpg"
							data-lightbox="gallery"
							style="background-image: url('{$GET_TEMA}/assets/images/gallery-02.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="{$GET_TEMA}/assets/images/gallery-03.jpg"
							data-lightbox="gallery"
							style="background-image: url('{$GET_TEMA}/assets/images/gallery-03.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="{$GET_TEMA}/assets/images/gallery-04.jpg"
							data-lightbox="gallery"
							style="background-image: url('{$GET_TEMA}/assets/images/gallery-04.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="{$GET_TEMA}/assets/images/gallery-05.jpg"
							data-lightbox="gallery"
							style="background-image: url('{$GET_TEMA}/assets/images/gallery-05.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="{$GET_TEMA}/{$GET_TEMA}/assets/images/gallery-06.jpg"
							data-lightbox="gallery"
							style="background-image: url('{$GET_TEMA}/assets/images/gallery-06.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="{$GET_TEMA}/assets/images/gallery-07.jpg"
							data-lightbox="gallery"
							style="background-image: url('{$GET_TEMA}/assets/images/gallery-07.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="{$GET_TEMA}/assets/images/gallery-08.jpg"
							data-lightbox="gallery"
							style="background-image: url('{$GET_TEMA}/assets/images/gallery-08.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="{$GET_TEMA}/assets/images/gallery-09.jpg"
							data-lightbox="gallery" style="background-image: url('assets/images/gallery-09.jpg');"></a>
					</div>
				</div>
			</div>

			<div class="sidebar-gallery w-full">
				<span class="mtext-101 cl5">
					Sobre Nós
				</span>

				<p class="stext-108 cl6 p-t-27">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur maximus vulputate hendrerit.
					Praesent faucibus erat vitae rutrum gravida. Vestibulum tempus mi enim, in molestie sem fermentum
					quis.
				</p>
			</div>
		</div>
	</div>
</aside>


<!-- Cart -->
<div class="wrap-header-cart js-panel-cart">
	<div class="s-full js-hide-cart"></div>

	<div class="header-cart flex-col-l p-l-65 p-r-25">
		<div class="header-cart-title flex-w flex-sb-m p-b-8">
			<span class="mtext-103 cl2">
				Meu Carrinho
			</span>

			<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
				<i class="zmdi zmdi-close"></i>
			</div>
		</div>

		<div class="header-cart-content flex-w js-pscroll">
			<ul class="header-cart-wrapitem w-full">
				{if $TOTAL == 0}
				<h4>Seu carrinho está vazio!!</h4>
				{/if}

				{foreach from=$PRO item=P}
				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img src="{$P.pro_img}" alt="{$P.pro_nome}">
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							{$P.pro_nome}
						</a>

						<span class="header-cart-item-info">
							{$P.pro_qtd} x ${$P.pro_valor}
						</span>
					</div>
				</li>

				{/foreach}


			</ul>
			{if $TOTAL > 0}
			<div class="w-full">
				<div class="header-cart-total w-full p-tb-40">
					Total: ${$TOTAL}
				</div>

				<div class="header-cart-buttons flex-c w-full">
					<a href="{$PAG_CARRINHO}"
						class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
						Ver Carrinho
					</a>
				</div>
			</div>
			{/if}
		</div>
	</div>
</div>

<body>
	<!--Mostra o conteúdo da página selecionada -->
	{php}
	Rotas::get_Pagina();
	{/php}


	<!-- Footer -->
	<footer class="bg-black p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Institucional
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Política de Privacidade
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Trabalhe Conosco
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Regulamentos
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Sobre a {$SITE_NOME}
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Ajuda
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Entregas
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Pagamentos
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Devoluções
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								FAQs
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						SIGA-NOS NAS REDES SOCIAS
					</h4>

					<div class="margin-left">
						{if $FACE != ''}
						<a href="$FACE" class="fs-18 cl7 hov-cl1 trans-04 m-r-16" target="_blank">
							<i class="fa fa-facebook"></i>
						</a>
						{else}
						{/if}

						{if $INSTA != ''}
						<a href="$INSTA" class="fs-18 cl7 hov-cl1 trans-04 m-r-16" target="_blank">
							<i class="fa fa-instagram"></i>
						</a>
						{else}
						{/if}


					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Novidades
					</h4>
					<h5 class="margin-bottom stext-107 cl7 trans-04">Assine nossa notificação de email e receba
						novidades e descontos exclusivos</h5>

					<form>
						<div class="wrap-input1 w-full p-b-4 margin-bottom">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="text" placeholder="Nome"
								required>
							<div class="focus-input1 bg-azul trans-04"></div>
						</div>

						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="email" name="email"
								placeholder="seu melhor email" required>
							<div class="focus-input1  bg-azul trans-04"></div>
						</div>

						<div class="p-t-18">
							<button class="flex-c-m stext-101 cl0 size-103 bg-azul bor1  hov-btn1 p-lr-15 trans-04">
								Assinar
							</button>
						</div>
					</form>
				</div>
			</div>

			<div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1">
						<img src="{$GET_TEMA}/assets/images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="{$GET_TEMA}/assets/images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="{$GET_TEMA}/assets/images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="{$GET_TEMA}/assets/images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="{$GET_TEMA}/assets/images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				<p class="stext-107 cl6 txt-center">

					&copy;
					<script>document.write(new Date().getFullYear());</script> {$SITE_NOME}

				</p>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>


	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/bootstrap/js/popper.js"></script>
	<script src="{$GET_TEMA}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function () {
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="{$GET_TEMA}/assets/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/slick/slick.min.js"></script>
	<script src="{$GET_TEMA}/assets/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function () { // the containers for all your galleries
			$(this).magnificPopup({
				delegate: 'a', // the selector for gallery item
				type: 'image',
				gallery: {
					enabled: true
				},
				mainClass: 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function (e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function () {
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function () {
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function () {
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function () {
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function () {
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function () {
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function () {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function () {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="{$GET_TEMA}/assets/js/main.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="{$GET_TEMA}/assets/js/map-custom.js"></script>
	<script src="{$GET_TEMA}/assets/js/mascara.js"></script>
	<script src="{$GET_TEMA}/assets/js/adicionais.js"></script>
	<script src="{$GET_TEMA}/assets/js/jquery-ias.min.js"></script>
	<script>
		var ias = jQuery.ias({
			container: '#main',
			item: '.pro',
			pagination: '#pagination',
			next: '.suivant'
		});
		ias.extension(new IASSpinnerExtension({
			src: '{$GET_HOME}/media/gif/loading.gif',
		}));
	</script>
	<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

</body>

</html>