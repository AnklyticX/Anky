<?php

use yii\helpers\Html;
use yii\grid\GridView;
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

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
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
            ],
        ],
    ]); ?>

</div>
