<?php 

if(isset($_GET['id'])){
	$id = $_GET['id'];
}else{
	$id = '';
}


$smarty = new Template();

$smarty->assign('SUCESSO', '');
$smarty->assign('ERRO', '');
$smarty->assign('AVISO', '');

$blog = new Blog();
$blog->GetBlogID($id);

$cateblog = new BlogCategorias();
$cateblog->GetBlogCate();

$smarty->assign('GET_TEMA', Rotas::get_SiteTEMA());
$smarty->assign('GET_SITE', Rotas::get_SiteHOME());
$smarty->assign('GET_SITE_ADD', Rotas::get_SiteAdd());
$smarty->assign('BLOG', $blog->GetItens());
$smarty->assign('CATEGORIAS', $cateblog->GetItens());
$smarty->assign('PAG_BLOG', Rotas::pag_Add_Blog());

 if(isset($_POST['blog_apagar']) && isset($_POST['blog_id_apagar']) && $_POST['confirmar'] == 'SIM'){
   if($blog->Apagar($_POST['blog_id_apagar'])){
        echo '<center><div class="col-md-9"><ul class="alert alert-warning margin-top" role="alert">
    <li> Apagando post...</div></li>
    </ul></center>';
        @unlink($_POST['blog_img_arquivo']);
        Rotas::Redirecionar(2, Rotas::pag_Add_Blog());
        exit();
   }else{
     $smarty->assign('ERRO', '<center><div class="col-md-9"><ul class="woo-error margin-top" role="alert">
    <li> Ocorreu um erro, tente novamente</div></li>
    </ul></center>');
   }
 }


if(isset($_POST['blog_titulo']) && isset($_POST['blog_descricao'])){
$blog_titulo      = $_POST['blog_titulo'];
$blog_descricao     = $_POST['blog_descricao'];
$blog_img          = $_FILES['blog_img']['name'];;
$blog_img_arquivo = $_POST['blog_img_arquivo'];
$blog_categorias      = $_POST['blog_categorias'];
$blog_status     = $_POST['blog_status'];
$blog_url = Sistema::GetSlug($_POST['blog_titulo']);


// Upload da Imagem
if(!empty($_FILES['blog_img']['name'])){
   $upload = new ImageUpload();
   if($upload->Upload(900, 'blog_img', 'blog/')){
     $blog_img = $upload->retorno;
     @unlink($_POST['blog_img_arquivo']);
   }else{
    exit('Erro ao enviar a imagem');
   }
}else{
  $blog_img = $_POST['blog_img_atual'];
}


$blog->PrepararUptade($blog_titulo, $blog_descricao, $blog_img, $blog_categorias, $blog_status, $blog_url);

if($blog->Alterar($id)){
  $site_tema = Config::GET_TEMA;
  echo '<div id="preloader">
         <img class="preloader" src="'.$site_tema.'/assets/images/gif/loading.gif" alt="">
      </div>';
  header("Refresh: 1");
}else{
	echo'<script>alert("Ocorreu um erro, tente novamente")</script>';
	exit();
 }
}





$smarty->display('add_blog_editar.tpl');

?>