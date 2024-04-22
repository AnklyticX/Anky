<?php
   use yii\helpers\Html;
   use yii\bootstrap\ActiveForm;

   rce\material\Assets::register($this);
$directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/ricar2ce/yii2-material-theme/assets');
   ?><?= $content ?>