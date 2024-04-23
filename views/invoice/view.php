<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Invoice */

$this->title = "Invoice - " . $model->invoice_number;
$this->params['breadcrumbs'][] = ['label' => 'Invoices', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<style>
    
</style>
<div class="invoice-view">
    <?php 
        if($model->payment_status == 1){
            echo '<div class="alert alert-success" role="alert">Payment towards this invoice is done!</div>';
        }else {
            echo '<div class="alert alert-warning" role="alert">Payment is pending!</div>';
        }
    ?>
    <div class="text-right">
        <p>
        <?= Html::a('<span class=\'glyphicon glyphicon-pencil \'></span> Update', ['update', 'id' => $model->invoice_id], ['class' => 'btn btn-default']) ?>
        <?= Html::a('<span class=\'glyphicon glyphicon-trash \'></span> Delete', ['delete', 'id' => $model->invoice_id], [
            'class' => 'btn btn-default',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    </div>
    
    <div class="row">
        <div class="col-md-2 col-xs-2 col-sm-2 print-div text-center">
            <a class="btn btn-default" href="index.php?r=invoice%2Fprint&id=<?= $model->invoice_id ?>&layout=layout1">
                <span class="glyphicon glyphicon-print"></span> Classic Template
            </a>
        </div>
    </div>
    <br>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'invoice_number',
            'invoice_date',
            [
                'label' => "GST",
                'value' => function($model){
                    return $model->gst."%";
                },
            ],
            [
                'label' => "Discount",
                'value' => function($model){
                    return $model->discount."%";
                },
            ],
            [
                'label' => "Payment status",
                'value' => function($model){
                    if($model->payment_status == 1){
                        return "Paid";
                    }else{
                        return "Not Paid";
                    }
                }
            ],
            'client.name',
        ],
    ]) ?>

    <table class="table table-bordered">
        <tr>
            <th>Sr. No</th>
            <th>Content</th>
            <th>Unit Price</th>
            <th>Qty</th>
            <th>Amount</th>
        </tr>
        <?php 
            $subtotal = 0;
            $model->content = json_decode($model->content);
            $sr_no = 1;
            $discount_amount = 0;
            $gst_amount = 0;
            if(is_array($model->content)){
                foreach($model->content as $key => $value){
                    if(is_numeric($value[2]) && is_numeric($value[3])){
                        $subtotal += $value[2] * $value[3];
                    }
        ?>
                <tr>
                    <td><?= $sr_no ?></td>
                    <td><p><?= $value[0] ?> <br><i><?= $value[1] ?></i></p></td>
                    <td><?= $value[2] ?></td>
                    <td><?= $value[3] ?></td>
                    <td><?= is_numeric($value[2]) && is_numeric($value[3]) ? $value[2] * $value[3] : 0?></td>
                </tr>
        <?php
                $sr_no = $sr_no + 1;
            }
        }
        ?>
        <tr>
            <td colspan=3></td>
            <td><b>Subtotal</b></td>
            <td><?= $subtotal ?></td>
        </tr>
        <?php 
            if($model->discount != "" &&  $model->discount != 0 ){
                $discount_amount = $subtotal * ($model->discount / 100);
        ?>
            <tr>
                <td colspan=3></td>
                <td><b>Discount (<?= $model->discount."%" ?>)</b></td>
                <td><?= $discount_amount ?></td>
            </tr>
        <?php
            }
        ?>
        <?php 
            if($model->discount != "" &&  $model->discount != 0){
                $subtotal -= $discount_amount;
        ?>
            <tr>
                <td colspan=3></td>
                <td><b>Subtotal after discount</b></td>
                <td><?= $subtotal ?></td>
            </tr>
        <?php
            }
        ?>
        <?php 
            if($model->gst != "" &&  $model->gst != 0){
                $gst_amount = $subtotal * ($model->gst / 100);
        ?>
            <tr>
                <td colspan=3></td>
                <td><b>GST (<?= $model->gst."%" ?>)</b></td>
                <td><?= $gst_amount ?></td>
            </tr>
        <?php
            }
        ?>
        <tr>
            <td colspan=3></td>
            <td><b>TOTAL</b></td>
            <td><?= $subtotal + $gst_amount ?></td>
        </tr>
    </table>
    
    <div class="row">
        <div class="col-md-4">
            <?php if($model->additional_fields != ""){ 
                echo "<p><b>Additional Fields</b></p>";
                echo "<ul class=\"list-group\">";
                    $extraFields = json_decode($model->additional_fields);
                    if(is_array($extraFields)){
                        foreach($extraFields as $key => $value){
                            echo " <li class=\"list-group-item\"><u>$value[0]</u>: $value[1]</li>"
                ?>
            <?php 
                    }
                }
                echo "</ul>";
            }
            
            ?>  
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <?php if($model->invoice_option != ""){ 
                echo "<p><b>Print Setting</b></p>";
                echo "<ul class=\"list-group\">";
                    $extraFields = json_decode($model->invoice_option);
                    if(is_array($extraFields)){
                        foreach($extraFields as $key => $value){
                            echo " <li class=\"list-group-item\">$value</li>"
                ?>
            <?php 
                    }
                }
                echo "</ul>";
            }
            ?>  
        </div>
    </div>
    
    
    
    
    
    
</div>
