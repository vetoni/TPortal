<?php

use backend\assets\AppAsset;
use yii\helpers\Html;

/* @var $this \yii\web\View */
/* @var $content string */

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php echo Html::beginTag('body', ['class' => 'skin-green']) ?>
<div class="wrapper">
    <header class="main-header">
        <!-- Logo -->
        <a href="<?= Yii::getAlias('@frontendUrl') ?>" class="logo">
            <strong><?= Yii::t('app', 'Foreign tour') ?></strong>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only"><?= Yii::t('app', 'Toggle navigation') ?></span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu"><?= $this->render('/shared/_user_dropdown') ?></li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <?= $this->render('/shared/_sidebar') ?>
        </section>
    </aside>
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">
            <?= $content ?>
        </section>
    </div>
    <footer class="main-footer">
        <strong><?= Yii::t('app', 'Copyright') ?> &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong>
        <?= Yii::t('app', 'All rights reserved.') ?>
    </footer>
</div>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
