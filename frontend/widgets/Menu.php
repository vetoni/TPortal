<?php

namespace frontend\widgets;

use frontend\models\MenuItem;
use yii\base\Widget;
use yii\helpers\Html;

/**
 * Class Menu
 * @package frontend\widgets
 */
class Menu extends Widget
{
    /**
     * @var
     */
    public $items;

    /**
     * @inheritdoc
     */
    public function init()
    {
        parent::init();
        $this->items = MenuItem::find()->all();
    }

    /**
     * @inheritdoc
     */
    public function run()
    {
        $inner = '';
        foreach ($this->items as $item)
        {
            $a = Html::a($item->name, $item->url);
            $inner .= Html::tag('li', $a);
        }
        return Html::tag('ul', $inner);
    }
}