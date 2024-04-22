<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>






<div class="container">
    <div class="title">Change Password</div>
    <div class="content">
        <?php $form = ActiveForm::begin(); ?>
        <div class="user-details">
            <div  class="col-md-8">
            <div class="input-box">
                <span class="details"></span>
                
        <?= $form->field($model, 'password1')->passwordInput() ?>
            </div>
            </div>
         <div  class="col-md-8">
         <div class="input-box">
                <span class="details"></span>
                <?= $form->field($model, 'password2')->passwordInput() ?>
            </div>
         </div>
        </div>

        <div class="button">
            
            <?= Html::submitButton('Save', ['class' => 'button']) ?>
        </div>
        <?php ActiveForm::end(); ?>
    </div>
</div>
</div>

<div class="row">

    <div class="col-md-6">

        <h2>Change Password</h2>
        <?php $form = ActiveForm::begin(); ?>


      

        <div class="form-group">
            <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
        </div>

        <?php ActiveForm::end(); ?>
    </div>
</div>
