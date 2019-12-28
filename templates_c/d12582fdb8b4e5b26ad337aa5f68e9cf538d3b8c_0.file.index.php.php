<?php
/* Smarty version 3.1.33, created on 2019-11-12 17:13:32
  from 'C:\xampp\htdocs\php\index.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dcada2c074388_96122567',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd12582fdb8b4e5b26ad337aa5f68e9cf538d3b8c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php\\index.php',
      1 => 1573575210,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dcada2c074388_96122567 (Smarty_Internal_Template $_smarty_tpl) {
echo '<?php 
';?>require_once 'config/init.conf.php';
require_once 'config/bdd.conf.php';
require_once 'config/connexion.conf.php';
require_once 'vendor/smarty/Smarty.class.php';
/* @var $bdd PDO */

//ajoute dans l'URL paramètre
/************PAGINATION **************/
$page_courante = !empty($_GET['p']) ? $_GET['p'] : 1;

function pagination ($page_courante, $nb_articles_par_page) {
    $index = ($page_courante - 1) * $nb_articles_par_page;
    return $index;
}
//mettre le nombre total d'articles
function nb_total_article($bdd){

    $sth = $bdd->prepare("SELECT COUNT(*) as total_articles FROM article WHERE publie =:publie");
    $sth->bindValue('publie', 1, PDO::PARAM_BOOL);
    $sth->execute();
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    $total_articles = $result['total_articles'];
    return $total_articles;
            
}

$nb_total_articles = nb_total_article($bdd);

$nb_total_pages = ceil($nb_total_articles / _nb_art_par_page);

$index = pagination($page_courante, _nb_art_par_page);


//creation requete selection article
$sth = $bdd->prepare("SELECT id,titre,texte AS mon_texte,DATE_FORMAT(date,'%d/%m/%Y') AS date_fr,publie FROM article WHERE publie = :publie LIMIT :index, :nb_art_par_page");
//chercher
$sth->bindValue('publie', 1, PDO::PARAM_BOOL);
$sth->bindValue('index', $index, PDO::PARAM_INT);
$sth->bindValue(':nb_art_par_page', _nb_art_par_page, PDO::PARAM_INT);//met la valeur 1 paramettre securisé
$sth->execute(); //executer

//passage result requête dans tableau
$tab_article = $sth->fetchAll(PDO::FETCH_ASSOC); //resultat fonction retourne moi tout de ce que on a executer
//print_r2($tab_article); //afficher contenu
//echo $tab_article[0]['titre']; //afficher 1 titre 

$smarty = new Smarty();

$smarty->setTemplateDir('templates/');
$smarty->setCompileDir('templates_c/');
//transmission des variables au templates
$smarty->assign('tab_article',$tab_article);
$smarty->assign('nb_total_pages',$nb_total_pages);

//** un-comment the following line to show the debug console
//$smarty->debugging = true;

include_once 'include/header.inc.php';
include_once 'include/menu.inc.php';
$smarty->display('index.php');
include_once 'include/footer.inc.php';
unset ($_SESSION['var']);



<?php }
}
