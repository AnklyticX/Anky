<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use app\models\Manager; // Assuming you have a Manager model

/* @var $this yii\web\View */
/* @var $model app\models\Client */
/* @var $form yii\widgets\ActiveForm */

?>

<div class="client-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'companyname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'phonenumber')->textInput() ?>

    <?= $form->field($model, 'manager_id')->widget(Select2::className(), [
        'data' => \yii\helpers\ArrayHelper::map(Manager::find()->where(['is_deleted' => 0])->orderBy('name')->all(), 'manager_id', 'name'),
        'options' => [
            'placeholder' => 'Select a manager...',
            'onchange' => 'showManagerDetails(this.value)',
        ],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]); ?>

    <!-- Container for manager details -->
    <div id="manager-details" style="display: none;">
        <!-- Manager details will be displayed here -->
    </div>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

    <script>
        function showManagerDetails(managerId) {
            var managerDetails = document.getElementById('manager-details');

            // Check if managerId is not empty and managerDetails container exists
            if (managerId && managerDetails) {
                // Example: Assuming manager details are stored in JavaScript object or fetched from server
                var managers = <?= json_encode(Manager::find()->asArray()->all()) ?>;
                var selectedManager = managers.find(function(manager) {
                    return manager.manager_id == managerId;
                });

                if (selectedManager) {
                    managerDetails.innerHTML = `
                        <h4>${selectedManager.name}</h4>
                        <p>Email: ${selectedManager.email}</p>
                        <p>Contact: ${selectedManager.phonenumber}</p>
                        <p>Address: ${selectedManager.address}</p>
                    `;
                    managerDetails.style.display = 'block';
                } else {
                    managerDetails.innerHTML = ''; // Clear manager details if managerId is not found
                    managerDetails.style.display = 'none';
                }
            }
        }
    </script>

</div>
