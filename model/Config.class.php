<?php 
Class Config{

//INFORMAÇÕES DO SITE
const SITE_URL = "http://localhost";
const SITE_PASTA = "loja_demostracao";
const SITE_NOME = "Vanusa Esportes";
const SITE_EMAIL_ADM = "leandrinholopes069@gmail.com";
const BD_LIMIT_POR_PAG = 12;
const BD_LIMIT_POR_PRODUTOS = 4;
const SITE_CEP = '96810046';
const GET_TEMA = "http://localhost/vanusa/view";


 //const SITE_URL = "http://leandro.epizy.com";
 //const SITE_PASTA = "loja_adaptada";
 //const SITE_NOME = "Vanuza Esportes";
 //const SITE_EMAIL_ADM = "leandrinholopes069@gmail.com";
 //const BD_LIMIT_POR_PAG = 12;
 //const BD_LIMIT_POR_PRODUTOS = 4;
 //const SITE_CEP = '90250878';


//INFORMAÇÕES DO BANCO DE DADOS
// const BD_HOST = "sql300.epizy.com",
//       BD_USER = "epiz_22059887",
//       BD_SENHA = "7EsBNuyU3DGE",
//       BD_BANCO = "epiz_22059887_loja_adaptada",
//       BD_PREFIX = "";


//INFORMAÇÕES DO BANCO DE DADOS
const BD_HOST = "localhost",
      BD_USER = "root",
      BD_SENHA = "",
      BD_BANCO = "loja_demostracao",
      BD_PREFIX = "pes_";


//INFORMAÇÕES PARA O PHP MAILER
const EMAIL_HOST = "smtp.gmail.com";
const EMAIL_USER = "leandrinholopes069@gmail.com"; 
const EMAIL_NOME = "Contato Vanuza Esportes";
const EMAIL_SENHA = "elaine2012"; 
const EMAIL_PORTA = 587;
const EMAIL_SMTPAUTH = true;
const EMAIL_SMTPSECURE = "tls";
const EMAIL_COPIA = "leandrinholopes069@gmail.com"; 

//CONSTANTES PARA PAGAMENTO PAGSEGURO
const PS_EMAIL  = "leandro-lopes46@hotmail.com"; // email pagseguro
const PS_TOKEN  = "87ef158a-a3a5-45e6-8f46-79dc27d97d45b2a0d4e3462b9558b923724b6502aa095e2b-7017-428d-b267-e9fb333fc19f"; // token produção
const PS_TOKEN_SBX = "D35E9F3823AC4E6D961D1EF9C6B077A6";  // token do sandbox
const PS_AMBIENTE = "sandbox"; // production   /  sandbox 




}//Fechamento da classe



?>