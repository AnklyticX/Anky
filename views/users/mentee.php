<?php

use kartik\date\DatePicker;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\data\ActiveDataProvider;
use yii\helpers\Url;

$this->title = "Mark Responses";
?>
<?php $form = ActiveForm::begin([
                'method' => 'get',
            ]); ?>
<input type="hidden" name="_csrf" value="<?=Yii::$app->request->getCsrfToken()?>" />
<div class="row">
    
 


    

   
    <?php ActiveForm::end(); ?>
</div>
<table class="table table-hover">
    <tr class="table table-info">
        <th>Sr. No</th>
        <th>Name</th>
        <th>USN</th>
        <th>Email Id</th>
        <th>Batch</th>
       
    
    </tr>

    <tr>
    <?php 
  
        $models = $dataProvider->getModels();
        foreach ($models as $key => $model) {

            
           
            
           
           
     
            echo '<tr>
                <td>'. ($key + 1) .'</td>
                <td>'. $model->username .'</td>
                <td>'. $model->usn .'</td>
                <td>'. $model->email .'</td>
                <td>'. $model->batch .'</td>
               
       
       
            </tr>';
        }
  
    ?>
    </tr>
    
    
</table>
