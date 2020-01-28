<?php 

if(isset($_GET['pro_id'])){
$id = $_GET['pro_id'];
}

$smarty = new Template();

// $pro_id = (int)$_POST['pro_id'];
if(isset($_POST['pro_id']) && isset($_FILES['pro_img']['name'])){
    $upload = new ImageUpload();
      
      if(!empty($_FILES['pro_img']['name'])){
      
        $upload->Upload(900, 'pro_img', 'img/');
        $pro_img = $upload->retorno;

        $gravar = new ProdutosImages();
      $gravar->Insert($pro_img, $id);

       echo '<center><div class="col-md-9"><ul class="woo-sucesso margin-top" role="alert">
   <li> Foto adicionada com sucesso!</div></li>
    </ul></center>';

      }
  }

 if(isset($_POST['fotos_apagar'])){
  $apagar = new ProdutosImages();
   foreach ($_POST['fotos_apagar'] as $foto){
   $apagar->Deletar($foto);
   $filename = Rotas::get_SiteRAIZ().'/'.Rotas::get_ImagePasta() .$foto;
   @unlink($filename);
   }

    echo '<center><div class="col-md-9"><ul class="woo-sucesso margin-top" role="alert">
   <li> Foto(s) apagada(s) com sucesso!</div></li>
    </ul></center>';
}



$img = new ProdutosImages($id);
$img->GetImagesPRO($id);

$smarty->assign('IMAGES', $img->GetItens());
$smarty->assign('IMAGES_TOTAL', $img->TotalDados());
$smarty->assign('PRO', $id);
$smarty->assign('SUCESSO','');
$smarty->assign('ERRO', '');
$smarty->assign('PAG_PRODUTOS', Rotas::pag_Add_Produtos());
$smarty->assign('GET_SITE_ADD', Rotas::get_SiteAdd());

$smarty->display('add_produtos_img.tpl');

?>