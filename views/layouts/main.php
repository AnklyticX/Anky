<?php
use yii\helpers\Html;

/* @var $this \yii\web\View */
/* @var $content string */

if (Yii::$app->controller->action->id === 'login') { 
/**
 * Do not use this code in your template. Remove it. 
 * Instead, use the code  $this->layout = '//main-login'; in your controller.
 */
    echo $this->render(
        'main-login',
        ['content' => $content]
    );
} else {

    if (class_exists('backend\assets\AppAsset')) {
        backend\assets\AppAsset::register($this);
    } else {
        app\assets\AppAsset::register($this);
    }

    dmstr\web\AdminLteAsset::register($this);

    $directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/almasaeed2010/adminlte/dist');
    ?>
    <?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <meta charset="<?= Yii::$app->charset ?>"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        
        <?php $this->head() ?>
        <style>
             @font-face {
                font-family: "Dosis";
                src: url("font/Dosis-Regular.ttf");
            }
            body{
                font-family: 'Dosis', sans-serif;
            }
            h1{
                font-family: 'Dosis', sans-serif;
                margin-bottom: 20px;
            }
            .skin-blue .main-header .navbar {
                background-color: #3c8dbc;
            }
            .skin-blue .main-header .logo {
                background-color: #367fa9;
                color: #fff;
                border-bottom: 0 solid transparent;
            }
            .content-wrapper {
                min-height: calc(100vh - 101px);
                background-color: #ffffff;
                z-index: 800;
            }
            .skin-blue .main-header .navbar .sidebar-toggle:hover {
                background-color: black !important;
            }
            .select2-container .select2-selection--single {
                box-sizing: border-box;
                cursor: pointer;
                display: block;
                height: 34px;
                user-select: none;
                -webkit-user-select: none;
            }
           
        </style>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
    <?php $this->beginBody() ?>
    <div class="wrapper">

        <?= $this->render(
            'header.php',
            ['directoryAsset' => $directoryAsset]
        ) ?>

        <?= $this->render(
            'left.php',
            ['directoryAsset' => $directoryAsset]
        )
        ?>

        <?= $this->render(
            'content.php',
            ['content' => $content, 'directoryAsset' => $directoryAsset]
        ) ?>

<footer class="main-footer">
            Designed With ❤️ By <strong><a href="#">Alzaahid</a></strong>
             <strong style="float:right;"><a href="#">Version 1.1.0</a></strong>
        </footer>

    </div>
    

    <?php $this->endBody() ?>
    </body>
    </html>
    <?php $this->endPage() ?>
<?php } ?>


