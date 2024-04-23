<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Client */

$this->title = $model->client_id;
$this->params['breadcrumbs'][] = ['label' => 'Clients', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="client-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->client_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->client_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'client_id',
            'companyname',
            'email:email',
            'phonenumber',
            [
                'attribute' => 'manager_id',
                'value' => function ($model) {
                    return $model->manager->name; 
                },
            ],
            [
                'attribute' => 'manager_id',
                'label'=>'Email',
                'value' => function ($model) {
                    return $model->manager->email; // Assuming 'name' is the attribute containing the manager's name
                },
            ],
            [
                'attribute' => 'manager_id',
                'label'=>'Address',
                'value' => function ($model) {
                    return $model->manager->address; // Assuming 'name' is the attribute containing the manager's name
                },
            ],
            [
                'attribute' => 'manager_id',
                'label'=>'Phone Number',
                'value' => function ($model) {
                    return $model->manager->phonenumber; // Assuming 'name' is the attribute containing the manager's name
                },
            ],
            'created_at',
            'updated_at',
            [
                'attribute' => 'is_deleted',
                'label'=>'Status',
                'value' => function ($model) {
                    if($model->is_deleted == 1)
                    {
                        return "InActive";
                    }
                    else
                    {
                        return "Active";
                    }
                },
            ],
        ],
    ]) ?>

</div>
