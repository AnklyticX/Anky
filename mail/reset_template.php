<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\assets\AppAsset;

AppAsset::register($this);
?>
<p>Hey there,</p> 
<p>You have requested for reset password for Aptitude System is </p>

<a href="<?= $url ?>" class="btn btn-primary">Reset Password</a>

<p>If you didnt make this request then you can safely ignore this mail :)</p>

<p>Best Regards,<br>
Aptitude Management System</p>
<img src="logo.png" height="30" alt="" srcset="">