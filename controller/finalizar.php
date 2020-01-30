<?php 
if(!Login::Logado()){
Login::AcessoNegado();
}else{

if(isset($_SESSION['PRO'])){
	// Verifica se foi selecionado o tipo de envio
	if(!isset($_POST['frete_radio'])){
		Rotas::Redirecionar(1, Rotas::pag_Carrinho());
		exit();
	}

$ref_cod_pedido = date('ymdHms') . $_SESSION['CLI']['cli_id'];

if(!isset($_SESSION['PED']['pedido'])){
$_SESSION['PED']['pedido'] = $ref_cod_pedido;
}

if(!isset($_SESSION['PED']['ref'])){
$_SESSION['PED']['ref'] = $ref_cod_pedido;
}

$smarty = new Template();

$carrinho = new Carrinho();


$smarty->assign('PRO', $carrinho->GetCarrinho());
$smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));
$smarty->assign('FRETE', Sistema::MoedaBR($_SESSION['PED']['frete']));
$smarty->assign('TOTAL_FRETE', Sistema::MoedaBR($_SESSION['PED']['total_com_frete']));

$smarty->assign('NOME_CLIENTE', $_SESSION['CLI']['cli_nome']);
$smarty->assign('SITE_NOME', Config::SITE_NOME);
$smarty->assign('SITE_HOME', Rotas::get_SiteHOME());
$smarty->assign('PAG_MINHA_CONTA', Rotas::pag_ClientePedidos());

$smarty->assign('GET_TEMA', Rotas::get_SiteTEMA());
$smarty->assign('GET_HOME', Rotas::get_SiteHOME());
$smarty->assign('PAG_CARRINHO_ALTERAR', Rotas::pag_CarrinhoAlterar());
$smarty->assign('PAG_CARRINHO', Rotas::pag_Carrinho());
$smarty->assign('PAG_FINALIZAR', Rotas::pag_PedidoFinalizar());
$smarty->assign('PAG_RETORNO', Rotas::pag_PedidoRetorno());
$smarty->assign('PAG_ERRO',Rotas::pag_PedidoRetornoERRO());


$pedido = new Pedidos();
$cliente = $_SESSION['CLI']['cli_id'];
$cod = $_SESSION['PED']['pedido'];
$ref = $_SESSION['PED']['ref'];
$frete = $_SESSION['PED']['frete'];

$email = new EnviarEmail();

$destinatarios = array(Config::SITE_EMAIL_ADM, $_SESSION['CLI']['cli_email']);

$assunto = 'Pedido Loja Demostração - ' . Sistema::DataAtualBR();

$msg = $smarty->fetch('email_compra.tpl');

$email->Enviar($assunto, $msg, $destinatarios);

if($pedido->PedidoGravar($cliente, $cod, $ref, $frete)){
	$pag = new PagamentoPS();
      
    $pag->Pagamento($_SESSION['CLI'], $_SESSION['PED'], $carrinho->GetCarrinho());
            
    //  var_dump($pag);
            
    // passando para o template dados do PS
    $smarty->assign('PS_URL', $pag->psURL);            
    $smarty->assign('PS_COD', $pag->psCod);
    $smarty->assign('PS_SCRIPT', $pag->psURL_Script);

	$pedido->LimparSessoes();
}





$smarty->assign('REF', $ref);
$smarty->display('finalizar.tpl');

}else{
	$site_home = Config::SITE_HOME;
	echo '<div class="not txt-center margin-bottom">
<h4 class="margin-bottom-10">Seu carrinho está vazio!!</h4>
<a href="'.$site_home.'" class="continuar-btn">Voltar para a loja</a>
</div>';
}
}



?>