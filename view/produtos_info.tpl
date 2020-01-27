<!-- breadcrumb -->
    <div class="bread-crumb flex-w p-l-25 p-r-15 margin-top margin-left p-lr-0-lg">
      <a href="{$GET_HOME}" class="stext-109 cl8 hov-cl1 trans-04">
        <i class="fa fa-home"></i> Home
        <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a>

      <a href="{$GET_HOME}/produtos/{$PRO.1.cate_id}/{$PRO.1.cate_slug}?p=1" class="stext-109 cl8 hov-cl1 trans-04">
        {$PRO.1.cate_nome} {$PRO.1.cate_sub}
        <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a>

      <span class="stext-109 cl4">
        {$PRO.1.pro_nome}
      </span>
    </div>


{foreach from=$PRO item=P}
	<!-- Detalhes do produto -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			{$SUCESSO}
			
			<div class="row"> 
				
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
                             <!-- Imagem 1 -->
							<div class="slick3 gallery-lb">
								<!-- Thumbnail da imagem do produto -->
								<div class="item-slick3" data-thumb="{$P.pro_img}">
									<div class="wrap-pic-w pos-relative">
										<!-- Imagem do produto -->
										<img src="{$P.pro_img_g}" alt="{$P.pro_nome}">
                                        <!-- Abri a imagem ao clicar no icone de expandir -->
										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="{$P.pro_img_gg}">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>
								{/foreach}

                                {foreach from=$IMAGES item=I}
                                <!-- Imagens extra -->
								<div class="item-slick3" data-thumb="{$I.img_nome}">
									<div class="wrap-pic-w pos-relative">
										<!-- Imagem do produto -->
										<img src="{$I.img_nome_g}" alt="IMG-PRODUCT">
                                        <!-- Abri a imagem ao clicar no icone de expandir -->
										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="{$I.img_nome_gg}">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>
                                {/foreach}
							</div>
						</div>
					</div>
				</div>
					
				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<h1 class="mtext-105 cl2 js-name-detail">
							{$P.pro_nome}
						</h1>

						<span class="mtext-106 cl2">
							R$ {$P.pro_valor}
						</span>

						<!-- Adicionar aos favoritos / Share -->
						<div class="flex-w flex-c p-l-100 p-t-40 respon7 margin-top">
							<div class="flex-m bor9 p-r-10 m-r-11">

								<form  name="add_favoritos" method="post" action="">
                                  <button>
									<input type="hidden" name="add_favoritos" value="add">

									<input type="hidden" name="pro_nome" value="{$P.pro_nome}">
									<input type="hidden" name="pro_categoria" value="{$P.pro_categoria}">
									<input type="hidden" name="pro_img" value="{$P.pro_img_atual}">
									<input type="hidden" name="pro_id" value="{$P.pro_id}">
									<input type="hidden" name="pro_slug" value="{$P.pro_slug}">
									<input type="hidden" name="pro_valor" value="{$P.pro_valor}">

									
								<a class="tooltip100" data-tooltip="Adicionar ao favorito"><i class="zmdi zmdi-favorite cl3 {$CLASSE_FAVORITO}"></i></a>
							    
								</button>
								</form>

							</div>

                            <div class="bor9 ">
							<a href="https://www.facebook.com/sharer/sharer.php?u=&amp;t=" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Compartilhar no Facebook" target="_blank" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent(document.URL) + '&amp;t=' + encodeURIComponent(document.URL)); return false;">
								<i class="fa fa-facebook"></i>
							</a>
                           </div>

                           <div class="bor9">
							<a href="https://twitter.com/intent/tweet?" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Tweetar no Twitter" target="_blank" onclick="window.open('https://twitter.com/intent/tweet?text=%20Gostei%20dessa%20publicação ' + encodeURIComponent(document.title) + ':%20 ' + encodeURIComponent(document.URL)); return false;">
								<i class="fa fa-twitter"></i>
							</a>
                           </div>

                           <div class="bor9">
							<a href="" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Enviar no Whatsapp" id="whatsapp-share-btt" target="_blank">
								<i class="fa fa-whatsapp"></i>
							</a>
							</div>

							<div class="bor9">
							<a href="" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Compartilhar no Telegram" id="telegram-share-btt" target="_blank">
								<i class="fa fa-telegram"></i>
							</a>
							</div>

						</div>

						<!--  -->
						<div class="p-t-33">
							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">
									Tamanho
								</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select class="js-select2" name="time">
											<option>Selecione</option>
											<option>Teste</option>
											<option>Teste</option>
											<option>Teste</option>
											<option>Teste</option>
											
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>


							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">
									Cor
								</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select class="js-select2" name="time">
											<option>Selecione</option>
											<option>Teste</option>
											<option>Teste</option>
											<option>Teste</option>
											<option>Teste</option>
											
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>



								

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-204 flex-c flex-m respon6-next">
									
										
                           <form name="carrinho" method="post" action="{$PAG_COMPRAR}">

                              <!-- Quantidade -->
                           	<div class="wrap-num-product flex-w m-r-20 m-tb-10">
										<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>

										<input class="mtext-104 cl3 txt-center num-product" type="number" name="qua" placeholder="1" value="{$QUA}">

										<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>
                                     
                           <input type="hidden" name="pro_id" value="{$P.pro_id}">
                            <input type="hidden" name="acao" value="add">
                            
							<button class="flex-c-m stext-101 cl0 size-101 bg-azul bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail margin-top-30">
										Comprar &nbsp;<i class="zmdi zmdi-shopping-cart"></i>
								</button>
								</form>
							   </div>
							</div>	
						</div>
						
					</div>
				</div>
			</div>



			<div class="bor10 p-t-43 p-b-40">
				<!-- Tab01 -->
				<div class="tab01">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item p-b-10">
							<a class="nav-link active" data-toggle="tab" href="#description" role="tab">Descrição</a>
						</li>

						<li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#information" role="tab">Informações Adicionais</a>
						</li>

						<!-- <li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#reviews" role="tab">Comentários (1)</a>
						</li> -->
					</ul>

					<!-- Tab panes -->
					<div class="tab-content p-t-43">
						<!-- - -->
						<div class="tab-pane fade show active" id="description" role="tabpanel">
							<div class="how-pos2 p-lr-15-md stext-102 cl6 text-center">
									{$P.pro_desc}
								
							</div>
						</div>

						<!-- - -->
						<div class="tab-pane fade" id="information" role="tabpanel">
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto text-center">
									<ul class="p-lr-28 p-lr-15-sm">
										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Peso
											</span>

											<span class="stext-102 cl6 size-206">
												{$P.pro_peso}
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Dimensões
											</span>

											<span class="stext-102 cl6 size-206">
												110 x 33 x 100 cm
											</span>
										</li>

										<!-- <li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Materials
											</span>

											<span class="stext-102 cl6 size-206">
												60% cotton
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Color
											</span>

											<span class="stext-102 cl6 size-206">
												Black, Blue, Grey, Green, Red, White
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Size
											</span>

											<span class="stext-102 cl6 size-206">
												XL, L, M, S
											</span>
										</li> -->
									</ul>
								</div>
							</div>
						</div>
	                 
						<!-- - -->
						<div class="tab-pane fade" id="reviews" role="tabpanel">
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
									<div class="p-b-30 m-lr-15-sm">
										<!-- Review -->
										<div class="flex-w flex-t p-b-68">
											<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
												<img src="images/avatar-01.jpg" alt="AVATAR">
											</div>

											<div class="size-207">
												<div class="flex-w flex-sb-m p-b-17">
													<span class="mtext-107 cl2 p-r-20">
														Ariana Grande
													</span>

													<span class="fs-18 cl11">
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star-half"></i>
													</span>
												</div>

												<p class="stext-102 cl6">
													Quod autem in homine praestantissimum atque optimum est, id deseruit. Apud ceteros autem philosophos
												</p>
											</div>
										</div>
										
										<!-- Add review -->
										<form class="w-full">
											<h5 class="mtext-108 cl2 p-b-7">
												Add a review
											</h5>

											<p class="stext-102 cl6">
												Your email address will not be published. Required fields are marked *
											</p>

											<div class="flex-w flex-m p-t-50 p-b-23">
												<span class="stext-102 cl3 m-r-16">
													Your Rating
												</span>

												<span class="wrap-rating fs-18 cl11 pointer">
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<input class="dis-none" type="number" name="rating">
												</span>
											</div>

											<div class="row p-b-25">
												<div class="col-12 p-b-5">
													<label class="stext-102 cl3" for="review">Your review</label>
													<textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="review" name="review"></textarea>
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="name">Name</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name" type="text" name="name">
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="email">Email</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email" type="text" name="email">
												</div>
											</div>

											<button class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
												Submit
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		

		<div class="bg6 flex-c-m flex-w size-302 margin-top-30 p-tb-15">
			<span class="stext-107 cl6 p-lr-25">
				REF: {$P.pro_ref}
			</span>

			<span class="stext-107 cl6 p-lr-25">
				Categorias: Teste, Teste
			</span>
		</div>
	</section>


	<!-- Produtos Relacionados -->
	<section class="sec-relate-product bg0 p-t-45 p-b-105">
		<div class="container">
			<div class="p-b-45">
				<h3 class="ltext-106 cl5 txt-center">
					Produtos Relacionados
				</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">
				{foreach from=$RELACIONADOS item=R}
					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<form name="produto_relacionado" method="post" action="{$GET_HOME}/produto/{$R.pro_id}/{$R.pro_slug}">
								<button>
								<img src="{$R.pro_img}" alt="{$R.pro_nome}" class="img-thumbnail padding">
								 <input type="hidden" name="produto_id" value="{$R.pro_id}">
              					<input type="hidden" name="produto_subcategoria" value="{$R.pro_categoria}">
							    </button>
							   </form>
                               
                              <div class="text-center">
                              	<form name="produto_relacionado" method="post" action="{$GET_HOME}/produto/{$R.pro_id}/{$R.pro_slug}">
								<button class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6 pointer">
								{$R.pro_nome}
								 <input type="hidden" name="produto_id" value="{$R.pro_id}">
              					<input type="hidden" name="produto_subcategoria" value="{$R.pro_categoria}">
							    </button>
							   </form>
							  
							  <span class="stext-105 cl3">
							  R$ {$R.pro_valor}
							 </span>
							</div>

							</div>

							
						</div>
					</div>
                    
                {/foreach}

				</div>
			</div>
		</div>
	</section>
