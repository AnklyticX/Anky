<?php

use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this \yii\web\View */
/* @var $content string */

?>

<header class="main-header">

  <!-- Logo -->
  <a href="index" class="logo">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini"><b>AN</b>KY</span>
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg"><b>Anklyticx ERP</b></span>
  </a>

  <!-- Header Navbar -->
  <nav class="navbar navbar-static-top">
    <!-- Sidebar toggle button-->
    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
      <span class="sr-only">Toggle navigation</span>
    </a>
    
    <!-- Navbar Right Menu -->
    <div class="navbar-custom-menu">
      
      <ul class="nav navbar-nav">
        <!-- User Account: style can be found in dropdown.less -->
        <li class="dropdown user user-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
            <span class="hidden-xs">Hello, <?php if (!Yii::$app->user->isGuest) echo Yii::$app->user->identity->username; ?></span>
          </a>

          <ul class="dropdown-menu">

            <!-- User image -->
            <li class="user-header">
              <?= Html::img(Url::to(Yii::$app->request->baseUrl.'/admin.png'), ['alt' => 'My logo', 'class' =>'img-circle']); ?>
              <p>
                <?php if (!Yii::$app->user->isGuest): ?>
                  <?= Yii::$app->user->identity->username ?>
                  <small>Email: <?= Yii::$app->user->identity->email ?></small>
                <?php endif; ?>
              </p>
            </li>

            <!-- Menu Footer-->
            <li class="user-footer">
              <div class="pull-left" style="float:left;">
                <!-- Change Password Link -->
                <?= Html::a(
                      'Change Password',
                      ['/users/change-password'],
                      ['class' => 'btn btn-default btn-flat']
                ); ?>
              </div>

              <div class="pull-right">
                <?php if (!Yii::$app->user->isGuest): ?>
                  <!-- Sign Out Link -->
                  <?= Html::a(
                        'Sign out',
                        ['/site/logout'],
                        ['data-method' => 'post', 'class' => 'btn btn-default btn-flat']
                  ); ?>
                <?php endif; ?>
              </div>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>
</header>
