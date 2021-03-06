<?php

namespace frontend\controllers;

use common\models\City;
use yii\helpers\Json;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

/**
 * Class CityController
 * @package frontend\controllers
 */
class CityController extends Controller
{
    /**
     * @param $rid
     * @return string
     */
    public function actionList($rid) {

        return Json::encode(City::getList($rid));
    }


    /**
     * @param $id
     * @return string
     * @throws NotFoundHttpException
     */
    public function actionView($id)
    {
        $city = City::findOne($id);

        if ($city == null) {
            throw new NotFoundHttpException();
        }

        return $this->render('view', [
            'city' => $city,
        ]);
    }
}