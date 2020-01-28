<div class="container">
<div class="col-md-12 margin-top"> 

<!-- breadcrumb -->
    <div class="bread-crumb flex-w p-l-25 p-r-15 margin-top p-lr-0-lg">
      <a href="{$GET_SITE_ADD}" class="stext-109 cl8 hov-cl1 trans-04">
        <i class="fa fa-tachometer"></i> Painel de controle
        <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a>

      <a href="{$PAG_PRODUTOS}" class="stext-109 cl8 hov-cl1 trans-04">
        <i class="fa fa-tag"></i> Produtos
      </a>

    </div>

<h1 class="cl2 mtext-105 text-center"> <i class="fa fa-plus"></i> Imagens Adicionais
</h1>

<div class="row">

<div class="col-md-12">
<div class="box padding-20 margin-top margin-bottom">

<section id="novaimg">
    
<form name="nova" method="post" action=""  enctype="multipart/form-data">

<div class="col-md-12 text-center">

<input type="file" name="pro_img" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30  relative top-15 text-center inputfile" id="pro_img" required onchange="previewImagem()">
<input type="hidden" name="pro_id" value="{$PRO}">
<div class="text-center preview-imagem">
<img name="preview">
</div>

<label for="pro_img"><h5 class="text-center">Adicionar Imagem<br>
<i class="fa fa-upload margin-top"></i></h5></label>
<button class="btn btn-success "> Enviar </button> 
</div>  
</form> 
    
</section>
</div>
</div>
</div>
</div>
</div>

{if $IMAGES_TOTAL > 0}
<div class="bg0 m-t-23 p-b-140">
<div class="container">
<h2 class="cl2 mtext-105 text-center margin-bottom-30"> Imagens Adicionadas</h2>

<div class="row isotope-grid">

<form name="deletar" method="post" action="">
{foreach from=$IMAGES item=I}
<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
<div class="block2">
<div class="block2-pic hov-img0">

<img src="{$I.img_nome}" class="img-thumbnail">
<div class="text-center">
<label>Apagar?</label> 
<input type="checkbox" style="margin-left:45%;" class=" input-lg" name="fotos_apagar[]" value="{$I.img_arquivo}"> 
</div>


</div>
          
</div>
</div>       
{/foreach}

</div>

<section class="col-md-12 text-center" id="apagar">
<hr>
<input type="hidden" name="pro_id" value="{$I.img_pro_id}">             
<button class="btn btn-danger">  Apagar Marcadas <i class="fa fa-trash"></i></button>
                             
</section>
</form>

</div>
</div>
{/if}