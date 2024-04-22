<?php

namespace app\controllers;

use Yii;
use kriss\calendarSchedule\widgets\FullCalendarWidget;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\Users;
use yii\widgets\ActiveForm;
use app\controller\ContactForm;
use app\models\Event;
use app\models\Set1;
use app\models\Set2;


class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        if (!Yii::$app->user->isGuest) {
           
            
         
    
        return $this->render('index');
    
            
           
        }else{
            return $this->redirect(['/site/login']);
        }

    }

 

    /**
     * Login action.
     *
     * @return Response|string
     */
    public function actionLogin()
    {
        {
            if (!Yii::$app->user->isGuest) {
                return $this->goHome();
            }
    
            $model = new LoginForm();
            $newuser = new Users();
            $newuser->scenario = Users::SCENARIO_DEFAULT;
            if(Yii::$app->request->isAjax && $newuser->load(Yii::$app->request->post())){
                Yii::$app->response->format = Response::FORMAT_JSON;
                return ActiveForm::validate($newuser);
            }
    
            if ($newuser->load(Yii::$app->request->post())) {
                $decrypt_pass = $newuser->password;
                $newuser->password = Yii::$app->getSecurity()->generatePasswordHash($newuser->password);
                
                if($newuser->save()){
                    $model->username = $newuser->email;
                    $model->password = $decrypt_pass;
                    $model->login();
                    return $this->redirect(['site/login']);
                }
                //return $this->goBack();
            }
            if ($model->load(Yii::$app->request->post()) && $model->login()) {
                return $this->redirect(['site/index']);
            }
            
            return $this->render('login', [
                'model' => $model,
                'newuser' => $newuser,
            ]);
        }
    
    }

    /**
     * Logout action.
     *
     * @return Response
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->redirect(['login']);
    }

    /**
     * Displays contact page.
     *
     * @return Response|string
     */
  

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
     
        return $this->render('about');
    
    }
}
