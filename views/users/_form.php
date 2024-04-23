<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Users */
/* @var $form yii\widgets\ActiveForm */

// Add a CSS class to the form to apply styling
$formClass = 'modern-form';

?>

<style>
/* Custom CSS for the modern form */

.modern-form {
    max-width: 500px;
    margin: 0 auto;
}

.modern-form .form-group {
    margin-bottom: 20px;
}

.modern-form label {
    font-weight: bold;
    color: #555; /* Adjusted label color */
}

.modern-form input[type="text"],
.modern-form input[type="password"],
.modern-form textarea,
.modern-form select {
    width: 100%;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}

.modern-form input[type="text"]:focus,
.modern-form input[type="password"]:focus,
.modern-form textarea:focus,
.modern-form select:focus {
    border-color: #007bff;
    outline: none;
}

.modern-form .btn {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    transition-duration: 0.4s;
}

.modern-form .btn:hover {
    background-color: #0056b3;
}

</style>

<div class="<?= $formClass ?>">

    <?php $form = ActiveForm::begin([
        'options' => ['class' => 'form-horizontal'],
    ]); ?>

    <div class="form-group">
        <?= $form->field($model, 'username')->textInput(['maxlength' => true, 'class' => 'form-control']) ?>
    </div>

    <div class="form-group">
        <?= $form->field($model, 'fullname')->textInput(['maxlength' => true, 'class' => 'form-control']) ?>
    </div>

    <div class="form-group">
        <?= $form->field($model, 'password')->passwordInput(['maxlength' => true, 'class' => 'form-control']) ?>
    </div>

    <div class="form-group">
        <?= $form->field($model, 'email')->textInput(['maxlength' => true, 'class' => 'form-control']) ?>
    </div>
    
    <div class="form-group">
        <?= $form->field($model, 'level')->dropDownList(['1' => 'Admin', '2' => 'Staff'], ['prompt' => 'Select Role', 'class' => 'form-control'])->label('Role') ?>
    </div>

  

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
