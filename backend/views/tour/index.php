<?php

use common\widgets\CitiesWidget;
use common\widgets\NodeStatusWidget;
use common\widgets\TourSubTypesWidget;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\jui\DatePicker;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\TourSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Tours');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tour-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Create Tour'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'attribute' => 'nid',
            ],
            'title',
            [
                'attribute' => 'tid',
                'filter' => TourSubTypesWidget::widget(['model' => $searchModel, 'attribute' => 'tid']),
                'format' => 'html',
                'enableSorting' => false,
                'value' => function($data) {
                    return is_null($data->tourType) ? null : $data->tourType->name;
                }
            ],
            [
                'attribute' => 'cid',
                'filter' => CitiesWidget::widget(['model' => $searchModel, 'attribute' => 'cid']),
                'format' => 'html',
                'enableSorting' => false,
                'value' => function($data) {
                    return is_null($data->city) ? null : $data->city->name;
                }
            ],
            [
                'attribute' => 'image',
                'format' => 'image',
                'filter' => false,
                'enableSorting' => false,
                'value' => function ($data) {
                    return $data->imagePath;
                },
            ],
            [
                'attribute' => 'status',
                'format' => 'html',
                'filter' => NodeStatusWidget::widget(['model' => $searchModel, 'attribute' => 'status']),
                'enableSorting' => false,
                'value' => function ($data) {
                    return $data->statusText;
                },
            ],
            [
                'attribute' => 'created',
                'filter' => DatePicker::widget(['model' => $searchModel, 'attribute' => 'created', 'options' => ['class' => 'form-control']]),
                'format' => 'html',
            ],
            [
                'attribute' => 'changed',
                'filter' => DatePicker::widget(['model' => $searchModel, 'attribute' => 'changed', 'options' => ['class' => 'form-control']]),
                'format' => 'html',
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{update} {delete}',
            ],
        ],
    ]); ?>

</div>