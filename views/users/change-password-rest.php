<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Users */
/* @var $form yii\widgets\ActiveForm */
$this->title="Password Rest";
?>

<div class="users-form">

    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="text-center">
                <h2>Reset Password</h2>
                <div class="line"></div>
            </div>
            <?php if($alert == 1){ ?>
                <div class="alert alert-success" role="alert">Password changed successfully</div>
            <?php } ?>
            <?php $form = ActiveForm::begin(['id' => 'registration-form','enableAjaxValidation' => true,]); ?>
            
            <?= $form->field($model, 'password')->passwordInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'password_repeat')->passwordInput(['maxlength' => true]) ?>
          
            <div class="form-group">
                <?= Html::submitButton('<span class=\'glyphicon glyphicon-ok\'> </span> Change Password', ['class' => 'btn btn-default']) ?>
            </div>
            <?= $form->field($model, 'email')->hiddenInput()->label(""); ?>
            <?= $form->field($model, 'username')->hiddenInput()->label("") ?>
            <?php ActiveForm::end(); ?>
        </div>
        <div class="col-md-3"></div>
    </div>

</div>
<?php 
    $script = <<< JS
        $(document).ready(function(){
            setTimeout(() => {
                $(".alert-success").slideUp('fast');
            }, 10000);
        });
JS;
    $this->registerJS($script);
?>
