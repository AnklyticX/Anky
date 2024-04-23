<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SearchInvoice */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Invoices';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="invoice-index">


    
    <div class="row">
        <div class="col-md-12 text-right">
            <p>
                <?= Html::a('<span class=\'glyphicon glyphicon-plus\'> </span> New Invoice', ['create'], ['class' => 'btn btn-default']) ?>
            </p>
        </div>
    </div>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'rowOptions' => function ($model, $key, $index, $grid) {
            // $model is the current data model being rendered
            // check your condition in the if like `if($model->hasMedicalRecord())` which could be a method of model class which checks for medical records.
            if($model->payment_status == 1) { 
                return ['class' => 'success'];
            }else{
                return ['class' => 'warning'];
            }
        },
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            /* 'invoice_id', */
            'invoice_number',
            /* [
                'label' => "Invoice Date",
                'value' => function($model){
                    return date('d M y', strtotime($model->invoice_date))
                }
            ], */
            'invoice_date',
            [
                'label' => "Client Name",
                'attribute' => 'client_name',
                'value' => 'client.companyname'
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
            //'content:ntext',
            //'invoice_option:ntext',
            //'payment_status',
            //'client_id',
            //'created_at',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
