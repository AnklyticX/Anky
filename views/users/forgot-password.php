<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Users */
/* @var $form yii\widgets\ActiveForm */

$this->title = "Forgot Password";
?>
<style>
    body{
        background-image: url('img/office-background.jpg');
        background-repeat: no-repeat;
        background-size: cover;
    }
    .login-div {
        padding: 20px;
        border-radius: 4px;
        color: #cecece;
        background-color: #000000a8;
    }

    .form-control {
        background-color: #00000000;
        border: 1px solid #cecece;
        color: #cecece;
    }
    .btn-default {
        color: #cecece;
        background-color: #fff0;
        border-color: #cecece;
    }
</style>

<div class="container">
    <div class="col-md-4">

    </div>
    <div class="col-md-4 ">
        <?php if($alert == 1){ ?>
            <div class="alert alert-danger" role="alert">Error. The email ID entered is not a valid user. Please check the entered email.</div>
        <?php }else if($alert == 2){   ?>
            <div class="alert alert-success" role="alert">Success. A unique URL has been sent to your registered email ID to reset the password. The link will be valid only for 15min</div>
        <?php }else if($alert == 3){   ?>
            <div class="alert alert-danger" role="alert">Error. A unique URL has already been sent to your registered email ID to reset the password. The link will be valid only for 15min</div>
        <?php }else if($alert == 4){   ?>
            <div class="alert alert-danger" role="alert">Error. Something went wrong..</div>
        <?php } ?>
        <div class="login-div">
            <h2>Forgot Password</h2>
            <?php $form = ActiveForm::begin(); ?>
            <p><b>Email ID: </b></p><input class="form-control" type="email" name="email"><br>
            <div class="form-group">
                <?= Html::submitButton('<span class=\'glyphicon glyphicon-ok\'> </span> Reset', ['class' => 'btn btn-default']) ?>
            </div>
            <?php ActiveForm::end(); ?>
        </div>
    </div>
    <div class="col-md-4">

    </div>
</div>

<?php 
    $script = <<< JS
        $(document).ready(function(){
            setTimeout(() => {
                $(".alert").slideUp('fast');
            }, 30000);
        });
JS;
    $this->registerJS($script);
?>