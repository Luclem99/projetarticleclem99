<?php
/* Smarty version 3.1.33, created on 2019-11-19 13:58:30
  from 'C:\xampp\htdocs\php\templates\adduser.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dd3e6f64e8c46_53441736',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ea11671154c5dfbeaec020996f22ed396b3748fb' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php\\templates\\adduser.tpl',
      1 => 1574168306,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dd3e6f64e8c46_53441736 (Smarty_Internal_Template $_smarty_tpl) {
?>  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h1 class="mt-5">Blog</h1>
        <h2>Ajouter un utilisateur</h2>
      </div>
    </div>


     <!--Formulaire permettant l'ajout d'un utilisateur dans la base de données utilisateur-->
        <form method="post" enctype='multipart/form-data' action="adduser.php">
  <div class="form-group">
    <input type="text" name="nom" class="form-control" required placeholder="Nom">
    <small class="form-text text-muted"></small>
  </div>
  <div class="form-group">
    <input type="text" required name="prenom" class="form-control" placeholder="Prénom">
  </div>
            <div class="form-group">
    <input type="email" required name="email" class="form-control" placeholder="Email">
  </div>
 <div class="form-group">
    <input type="password" required name="mdp" class="form-control" placeholder="Mot de passe">
  </div>
   
 
  <button type="submit" name="bouton" class="btn btn-primary">Envoyer</button>
</form>      <?php }
}
