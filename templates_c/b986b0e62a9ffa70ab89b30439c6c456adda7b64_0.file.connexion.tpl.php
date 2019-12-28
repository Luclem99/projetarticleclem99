<?php
/* Smarty version 3.1.33, created on 2019-12-28 18:24:46
  from 'C:\xampp\htdocs\php\templates\connexion.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e078fdea05e19_05267244',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b986b0e62a9ffa70ab89b30439c6c456adda7b64' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php\\templates\\connexion.tpl',
      1 => 1574783541,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e078fdea05e19_05267244 (Smarty_Internal_Template $_smarty_tpl) {
?>s<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h1 class="mt-5">Blog</h1>
            <h2>Connexion</h2>
        </div>
    </div>



    <form method="post" enctype='multipart/form-data' action="connexion.php">
        <div class="form-group">
            <input type="email" name="email" class="form-control" required placeholder="Email">
            <small class="form-text text-muted"></small>
        </div>
        <div class="form-group">
            <input type="password" required name="mdp" class="form-control" placeholder="mot de passe">
        </div>

        <button type="submit" name="bouton" class="btn btn-primary">Envoyer</button>
    </form><?php }
}
