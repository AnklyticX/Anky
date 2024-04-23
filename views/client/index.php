<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Modal;
use app\models\Manager;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SearchUsers */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Clients';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="users-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Clients', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Modal::begin([
        'header' => '<h4>Client Details</h4>',
        'id' => 'client-details-modal',
        'size' => 'modal-lg',
        'clientOptions' => ['backdrop' => 'static', 'keyboard' => false] // Prevent closing modal by clicking outside or pressing ESC key
    ]); ?>

    <div id="client-details-container"></div>

    <?php Modal::end(); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'tableOptions' => ['class' => 'table table-striped table-bordered'], // Bootstrap table classes
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'companyname',
            'email:email',
            'phonenumber',
            [
                'attribute' => 'manager_id',
                'value' => function ($model) {
                    return $model->manager->name; // Assuming 'name' is the attribute containing the manager's name
                },
                'label' => 'Manager Name', // Set the column label
              
            ],
            //'created_at',
            //'updated_at',
            [
                'attribute' => 'is_deleted',
                'label' => 'User Status',
                'format' => 'html',
                'value' => function ($model) {
                    $status = $model->is_deleted == 1 ? 'In Active' : 'Active';
                    $color = $model->is_deleted == 1 ? 'red' : 'green';
                    return '<span style="background-color: ' . $color . '; color: white; padding: 3px 6px; border-radius: 5px;">' . $status . '</span>';
                },
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'contentOptions' => ['style' => 'white-space: nowrap;'], // Prevent action column from wrapping
                'template' => '{view}{update}{delete}',
                // 'buttons' => [
                //     'view' => function ($url, $model, $key) {
                //         return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', '#', [
                //             'class' => 'view-client-details',
                //             'data-toggle' => 'modal',
                //             'data-target' => '#client-details-modal',
                //             'data-client_id' => $model->client_id,
                //             'data-name' => $model->companyname,
                //             'data-email' => $model->email,
                //             'data-phone' => $model->phonenumber,
                //             'data-manager' => $model->manager->name, // Assuming 'name' is the attribute containing the manager's name
                //             'title' => 'View Details',
                //         ]);
                //     },
                // ],
            ],
        ],
    ]); ?>

</div>

<?php
// JavaScript to handle the click event on the eye icon and load details in the modal
$js = <<< JS
    $('#client-details-modal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var clientName = button.data('name');
        var modal = $(this);
        modal.find('.modal-title').text('Client Details: ' + clientName);
        // Assuming client details are available in the data attributes of the eye icon button
        var clientId = button.data('client_id');
        var clientEmail = button.data('email');
        var clientPhone = button.data('phone');
        var clientManager = button.data('manager');
        // Construct HTML content for client details
        var detailsHtml = '<p><strong>Name:</strong> ' + clientName + '</p>' +
                          '<p><strong>Email:</strong> ' + clientEmail + '</p>' +
                          '<p><strong>Phone:</strong> ' + clientPhone + '</p>' +
                          '<p><strong>Manager:</strong> ' + clientManager + '</p>';
        $('#client-details-container').html(detailsHtml);
    });
JS;

$this->registerJs($js);
?>
