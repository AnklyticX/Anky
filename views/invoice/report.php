<?php

use kartik\date\DatePicker;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\data\ActiveDataProvider;
$this->title = "Invoice Report";
?>
<?php $form = ActiveForm::begin([
                'method' => 'get',
            ]); ?>
<input type="hidden" name="_csrf" value="<?=Yii::$app->request->getCsrfToken()?>" />
<div class="row">
    <div class="col-md-3">
        <?php 
            echo DatePicker::widget([
                'name' => 'start_date',
                'value' => $start_date,
                'options' => ['placeholder' => 'Start Date'],
                'type' => DatePicker::TYPE_COMPONENT_APPEND,
                'pluginOptions' => [
                    'autoclose'=>true,
                    'format' => 'yyyy-mm-dd'
                ]
            ]);
        ?>
    </div>
    <div class="col-md-3">
        <?php 
            echo DatePicker::widget([
                'name' => 'end_date',
                'value' => $end_date,
                'options' => ['placeholder' => 'End Date'],
                'type' => DatePicker::TYPE_COMPONENT_APPEND,
                'pluginOptions' => [
                    'autoclose'=>true,
                    'format' => 'yyyy-mm-dd'
                ]
            ]);
        ?>
    </div>
    <div class="col-md-2">
        <?= 
            Select2::widget([
                'name' => 'payment_status',
                'value' => $payment_status,
                'data' => ['1' =>'Paid', '0' => 'Not Paid'],
                'options' => [ 'placeholder' => 'Select payment status ...']
            ]);
        ?>
    </div>
    <div class="col-md-2">
        <div class="form-group">
            <?= Html::submitButton('Filter', ['class' => 'btn btn-default']) ?>
        </div>
    </div>
    <?php ActiveForm::end(); ?>
</div>
<table class="table table-bordered">
    <tr>
        <th>Sr. No</th>
        <th>Invoice Number</th>
        <th>Invoice Date</th>
        <th>Client Name</th>
        <th>Total Amount</th>
        <th>Action</th>
    </tr>
    <?php 
        $total = 0;
        $models = $dataProvider->getModels();
        foreach ($models as $key => $model) {
            $contents = json_decode($model->content);
            $subtotal = 0;
            foreach ($contents as $content) {
                $subtotal += $content[2] * $content[3];
            }
            $total += $subtotal;
            $class = $model->payment_status == 1 ? 'success' : 'warning';
            echo '<tr class="'. $class .'">
                <td>'. ($key + 1) .'</td>
                <td>'. $model->invoice_number .'</td>
                <td>'. date('d M Y', strtotime($model->invoice_date)) .'</td>
                <td>'. $model->client->name .'</td>
                <td>'.  number_format($subtotal, strlen(substr(strrchr($subtotal, "."), 1))) .'</td>
                <td><a href="index.php?r=invoice%2Fview&amp;id='. $model->invoice_id .'"><span class="glyphicon glyphicon-eye-open"></span></a></td>
            </tr>';
        }
    ?>
</table>
<p><b>Total Amount: </b> INR <?= number_format($total, strlen(substr(strrchr($total, "."), 1))) ?></p>