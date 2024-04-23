<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
setlocale(LC_MONETARY, 'en_IN');
/* @var $this yii\web\View */
/* @var $model app\models\Invoice */

$this->title = "Invoice - " . $model->invoice_number;
$this->params['breadcrumbs'][] = ['label' => 'Invoices', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&family=Titillium+Web:wght@300&display=swap" rel="stylesheet">
<style>
    .print-div{
        border: 1px solid #bdbdbd;
    }
    .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
        padding: 4px;
        line-height: 1.42857143;
        vertical-align: top;
        border-top: 1px solid #ddd;
    }
    .table-bordered > thead > tr > th, .table-bordered > tbody > tr > th, .table-bordered > tfoot > tr > th, .table-bordered > thead > tr > td, .table-bordered > tbody > tr > td, .table-bordered > tfoot > tr > td {
        border: 1px solid black;
    }
    body{
        font-family: 'Titillium Web', sans-serif;
    }
    #company-name{
        font-family: 'Oswald', sans-serif;
        font-weight: bolder;
        letter-spacing: 4px;
    }
</style>
<?php 
$hide_qty = 0;
$hide_authorized_signature = 0;
$hide_logo = 0;
$hide_unit_price = 0;
$hide_company_name = 0;
if ($model->invoice_option != "") {
    $extraFields = json_decode($model->invoice_option);
    if (is_array($extraFields)) {
        $colspan = 3;
        foreach ($extraFields as $value) {
            if ($value == "hide_qty") {
                $hide_qty = 1;
                $colspan -= 1;
            }
            if ($value == "hide_authorized_signature") {
                $hide_authorized_signature = 1;
            }
            if ($value == "hide_unit_price") {
                $hide_unit_price = 1;
                $colspan -= 1;
            }
            if ($value == "hide_company_name") {
                $hide_company_name = 1;
            }
            if ($value == "hide_logo") {
                $hide_logo = 1;
            }
        }
    }
}
?>  
<div class="container">
    <div class="text-center">
        <h1 style="font-size: 38px;"><u><b>INVOICE</b></u></h1>
    </div>
    <br>
    <div class="row" style="margin: 10px 0px; padding: 10px 0px;" >
        <div class="col-xs-6 col-md-6">
            <div class="row">
                <div class="col-xs-10 col-md-10">
                    <?php if ($hide_logo == 0) { ?>
                        <img src="<?= $model->client->logo ?>" class="img img-responsive" alt="">
                    <?php } ?>
                </div>
                <div class="col-xs-2 col-md-2"></div>
            </div>
            <h2 id="company-name">
                <?php if ($hide_company_name == 0) { ?>
                    <?= $model->client->companyname ?>
                <?php } ?>
            </h2>
        </div>
        <div class="col-xs-6 col-md-6">
            <p><b><u>CONTACT INFORMATION</u></b><br>
              
              
                <b>Phone Number:</b> <?= $model->client->phonenumber ?><br>
                <b>Email:</b> <?= $model->client->email ?><br>
               
            </p>
        </div>
    </div>
    <div class="row" style=" padding: 20px 0px; border-bottom:2px solid #a7a7a7; border-top:2px solid #a7a7a7">
        <div class="col-xs-4 text-center">
            <p  style="font-size: 16px">Billed to<br>
                <b>
                    <?= $model->client->companyname ?><br>
                  
                  
                    <?php if ($model->client->email != "") { ?>
                        <?= $model->client->email ?><br>
                    <?php } ?>
                    <?php if ($model->client->phonenumber != "") { ?>
                        <?= $model->client->phonenumber ?><br>
                    <?php } ?>
                </b>
            </p>
        </div>
        <div class="col-xs-4 text-center">
            <p style="font-size: 16px">Invoice Number<br>
                <b><?= $model->invoice_number ?><br></b>
            </p>
            <p  style="font-size: 16px">Invoice Date<br>
                <b><?= date("d M Y", strtotime($model->invoice_date)) ?><br></b>
            </p>
        </div>
        <div class="col-xs-4 text-center">
            <p  style="font-size: 16px">Invoice Total<br>
                <b style="font-size: 30px;">
                    <?= $model->currency ?> <span id="invoice-total"></span>
                </b>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
    </div>
    <br>
    <table class="table table-bordered">
        <tr>
            <th class="col-xs-2">Sr. No</th>
            <th class="col-xs-6">Content</th>
            <?php if ($hide_unit_price == 0) { ?>
                <th class="col-xs-2">Unit Price</th>
            <?php } ?>
            <?php if ($hide_qty == 0) { ?>
                <th class="col-xs-2">Qty</th>
            <?php } ?>
            <th class="col-xs-2">Amount (<?= $model->currency ?>)</th>
        </tr>
        <?php 
        $subtotal = 0;
        $model->content = json_decode($model->content);
        $sr_no = 1;
        $discount_amount = 0;
        $gst_amount = 0;
        if (is_array($model->content)) {
            foreach ($model->content as $key => $value) {
                if (is_numeric($value[2]) && is_numeric($value[3])) {
                    $subtotal += $value[2] * $value[3];
                }
                ?>
                <tr>
                    <td  class="col-xs-2"><?= $sr_no ?></td>
                    <td class="col-xs-6"><p><?= $value[0] ?> <br><i><?= $value[1] ?></i></p></td>
                    <?php if ($hide_unit_price == 0) { ?>
                        <td class="col-xs-2"><?= $value[2] ?></td>
                    <?php } ?>
                    <?php if ($hide_qty == 0) { ?>
                        <td class="col-xs-2"><?= $value[3] ?></td>
                    <?php } ?>
                    <td><?php 
                    $number = is_numeric($value[2]) && is_numeric($value[3]) ? $value[2] * $value[3] : 0;
                    $number = is_float($number) ? round($number,2) : (int) $number;
                    echo number_format($number, strlen(substr(strrchr($number, "."), 1)));
                    ?></td>
                </tr>
                <?php
                $sr_no = $sr_no + 1;
            }
        }
        ?>
        <?php 
        if ($model->gst != 0 ) {
            ?>
            <tr>
                <td colspan=<?=  $colspan ?>></td>
                <td class="text-right"><b>Subtotal</b></td>
                <td><?=  number_format($subtotal, strlen(substr(strrchr($subtotal, "."), 1))) ?></td>
            </tr>
            <?php
        }
        ?>
        <?php 
        if ($model->discount != "" &&  $model->discount != 0 ) {
            $discount_amount = $subtotal * ($model->discount / 100);
            ?>
            <tr>
                <td colspan=<?=  $colspan ?>></td>
                <td class="text-right"><b>Discount (<?= $model->discount."%" ?>)</b></td>
                <td><?php
                $discount_amount = round($discount_amount,2);
                echo number_format($discount_amount, strlen(substr(strrchr($discount_amount, "."), 1)));
                ?></td>
            </tr>
            <?php
        }
        ?>
        <?php 
        if ($model->discount != "" &&  $model->discount != 0){
            $subtotal -= $discount_amount;
            ?>
            <!-- <tr>
                <td colspan=3></td>
                <td><b>Subtotal after discount</b></td>
                <td><?= $subtotal ?></td>
            </tr> -->
            <?php
        }
        ?>
        <?php 
        if ($model->gst != "" &&  $model->gst != 0){
            $gst_amount = $subtotal * ($model->gst / 100);
            ?>
            <tr>
                <td colspan=<?= $colspan ?>></td>
                <td class="text-right"><b>GST (<?= $model->gst."%" ?>)</b></td>
                <td><?php
                $gst_amount = round($gst_amount,2);
                echo number_format($gst_amount, strlen(substr(strrchr($gst_amount, "."), 1)));
                ?></td>
            </tr>
            <?php
        }
        ?>
        <?php 
        $f = new NumberFormatter("en", NumberFormatter::SPELLOUT);
        $inwords = $f->format(round($subtotal + $gst_amount,2));
        ?>
        <tr >
            <td colspan=<?= $colspan ?>></td>
            <td class="text-right"><b>TOTAL</b></td>
            <?php 
            $t = round($subtotal + $gst_amount,2);
            ?>
            <td class="col-xs-2" id='total'><?= number_format($t, strlen(substr(strrchr($t, "."), 1))); ?></td>
        </tr>
        <tr >
            <td colspan=<?= 2 + $colspan ?>><p><b>Amount(In Words): <?= strtoupper($inwords) ?> ONLY</b></p></td>
        </tr>
    </table>
    <?php 
    if ($model->additional_fields != "") { 
        $div1 = "<p>";
        $div2 = "<p>";
        $div3 = "<p>";
        $div_counter = 1;
        $extraFields = json_decode($model->additional_fields);
        if (is_array($extraFields)) {
            foreach ($extraFields as $key => $value) {
                if ($div_counter == 1) {
                    $div1 .= "<b>$value[0]</b>: $value[1]<br>";
                    $div_counter = 2;
                } else if ($div_counter == 2) {
                    $div2 .= "<b>$value[0]</b>: $value[1]<br>";
                    $div_counter = 3;
                } else if ($div_counter == 3) {
                    $div_counter = 1;
                    $div3 .= "<b>$value[0]</b>: $value[1]<br>";
                }
            }
            $div1 .= "</p>";
            $div2 .= "</p>";
            $div3 .= "</p>";
        }
    }
    ?>  
    <div class="row">
        <div class="col-xs-4">
            <?= $div1; ?>
        </div>
        <div class="col-xs-4">
            <?= $div2; ?>
        </div>
        <div class="col-xs-4">
            <?= $div3; ?>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <?php 
            $user = Yii::$app->user->identity;
          ?>
        </div>
        <div class="col-xs-6 text-center">
            <br>
            <br>
            <br>
            <br>
            <br>
            <?php 
            if ($hide_authorized_signature == 0) {
                ?>
                <p>________________________________<br>Authorized Signature</p>
                <?php 
            }
            ?>
        </div>
    </div>
</div>
<?php 
$script = <<< JS
$(document).ready(function(){
    $("#invoice-total").html($("#total").html());
    (window).print();
});
JS;
$this->registerJS($script);
?>
