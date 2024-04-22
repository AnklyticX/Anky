<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Login';
$this->params['breadcrumbs'][] = $this->title;
?>
<style>
    @import url("https://fonts.googleapis.com/css?family=Raleway:400,700");


body {
  min-height: 100vh;
  font-family: "Raleway", sans-serif;
  margin: 0%;
}

.log_container {
  position: absolute;
  width: 100%;
  height: 100%;
  overflow: hidden;
}
.log_container:hover .top:before, .container:hover .top:after, .container:hover .bottom:before, .container:hover .bottom:after, .container:active .top:before, .container:active .top:after, .container:active .bottom:before, .container:active .bottom:after {
  margin-left: 200px;
  transform-origin: -200px 50%;
  transition-delay: 0s;
}
.log_container:hover .center, .container:active .center {
  opacity: 1;
  transition-delay: 0.1s;
}

.top:before, .top:after, .bottom:before, .bottom:after {
  content: "";
  display: block;
  position: absolute;
  width: 200vmax;
  height: 200vmax;
  top: 50%;
  left: 50%;
  margin-top: -100vmax;
  transform-origin: 0 50%;
  transition: all 0.5s cubic-bezier(0.445, 0.05, 0, 1);
  z-index: 10;
  opacity: 0.65;
  transition-delay: 0.2s;
}

.top:before {
  transform: rotate(45deg);
  background: #e46569;
}
.top:after {
  transform: rotate(135deg);
  background: #ecaf81;
}

.bottom:before {
  transform: rotate(-45deg);
  background: #60b8d4;
}
.bottom:after {
  transform: rotate(-135deg);
  background: #3745b5;
}

.center {
  position: absolute;
  width: 400px;
  height: 400px;
  top: 50%;
  left: 50%;
  margin-left: -200px;
  margin-top: -200px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 30px;
 
  opacity: 0;
  transition: all 0.5s cubic-bezier(0.445, 0.05, 0, 1);
  transition-delay: 0s;
  color: #333;
}
.center input {
  width: 100%;
  padding: 15px;
  margin: 5px;
  border-radius: 1px;
  border: 1px solid #ccc;
  font-family: inherit;
  height: 20px;
  border-radius: 0.25rem;
  background-color: transparent;
}

.btn-green
{
  height: 34px;
    padding-left: 30px;
    padding-right: 30px;
    width: 100%;
    color: #fff;
    background-color: #6c63ff;
    border-color: #6c63ff;
    border: 1px solid transparent;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.25rem;
    -webkit-appearance: button;
}
</style>
<div class="container">

<div class="log_container" onclick="onclick">
  <div class="top"></div>
  <div class="bottom"></div>
  <div class="center">
    <h2>Sign In</h2>
    <?php $form = ActiveForm::begin([
                    'id' => 'login-form',
//                    'fieldConfig' => [
//                        'template' => "{input}\n{hint}\n{error}",
//                    ],
                ]); ?>
               <?= $form->field($model, 'username')->textInput(["placeholder"=>"Email..."])->label(false) ?>
    
    <?= $form->field($model, 'password')->passwordInput(["class"=>"form-control","placeholder"=>"Password..."])->label(false) ?>
    <span class="bmd-form-group">
                  
                </span>
                <div class="card-footer justify-content-center">
                <?= Html::submitButton('Login', ['class' => 'btn btn-green btn-block btn-border', 'name' => 'login-button']) ?>
                
                <a href="#" style="color:black">Forgot password</a> 
           </div>
    <h2>&nbsp;</h2>
    
  </div>
  <?php ActiveForm::end(); ?>
</div>
</div>