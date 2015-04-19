<?php

use frontend\widgets\Menu;
use common\models\TourType;
use yii\helpers\Url;

$this->beginContent('@frontend/views/layouts/base.php');
$types = TourType::getTypes()->all();
?>
    <img class="presentation" src="img/presentation.jpg" alt="">
    <div class="content">
        <div class="left">
            <?php foreach ($types as $type) : ?>
                <a class="type" href="<?= Url::to(['tour-type/index', 'id' => $type->tid]) ?>"><?= $type->name ?></a>
                <ul class="subtype">
                    <?php foreach ($type->children as $subtype) : ?>
                        <li>
                            <a href="<?= Url::to(['tour-sub-type/index', 'id' => $subtype->tid, 'type' => $type->tid]) ?>"><img src="/img/cat.png" alt=""><?= $subtype->name ?></a>
                            <p><?= $subtype->description ?></p>
                        </li>
                    <?php endforeach; ?>
                </ul>
            <?php endforeach; ?>
            <img src="img/balls2.png" alt="">
        </div>

        <div class="right">
            <?= $content ?>
        </div>

        <div class="clr"></div>
    </div>
    <footer id="footer">
        <img src="img/globe2.png" alt="">
        <?= Menu::widget() ?>
    </footer>
<?php $this->endContent(); ?>