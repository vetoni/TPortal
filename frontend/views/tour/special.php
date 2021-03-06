<?php

use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $tours array */
/* @var $form yii\widgets\ActiveForm */

$this->title = Yii::t('app', 'Special orders');

?>
<h3 class="content-item-caption"><?= $this->title ?></h3>
<?= $this->render('/shared/_grid', [
    'source' => $tours,
    'getUrl' => function($item) { return Url::to(['tour/view', 'id' => $item->nid]); }
]) ?>