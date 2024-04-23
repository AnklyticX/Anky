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
    body {
        min-height: 100vh;
        font-family: Arial, sans-serif;
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: #f2f2f2;
        background-image: url('../img/restaurant-interior.jpg');
        background-size: cover;
        background-position: center;
    }

    .login-form {
        max-width: 400px;
        width:20%;
        padding: 20px;
        background-color: rgba(210,165,109, 0.8); /* Add transparency to the form */
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .login-form h2 {
        margin-bottom: 20px;
        text-align: center;
    }

    .login-form input[type="text"],
    .login-form input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .login-form button[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #6c63ff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .login-form button[type="submit"]:hover {
        background-color: #564ec0;
    }

    .forgot-password {
        text-align: center;
        margin-top: 15px;
    }

    .forgot-password a {
        color: #333;
        text-decoration: none;
    }
</style>

<div class="login-form">
    <h2><?= Html::encode($this->title) ?></h2>

    <?php $form = ActiveForm::begin(['id' => 'login-form']); ?>

    <?= $form->field($model, 'username')->textInput(['placeholder' => 'Email'])->label(false) ?>

    <?= $form->field($model, 'password')->passwordInput(['placeholder' => 'Password'])->label(false) ?>

    <div class="form-group">
        <?= Html::submitButton('Login', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
    </div>

    <div class="forgot-password">
        <?= Html::a('Forgot password', '#') ?>
    </div>

    <?php ActiveForm::end(); ?>
</div>
