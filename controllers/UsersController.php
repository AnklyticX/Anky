<?php

namespace app\controllers;

use Yii;
use app\models\Users;
use yii\web\UploadedFile;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\Response;
use yii\widgets\ActiveForm;
use app\models\Password;
use app\models\SearchUsers;
use yii\data\ActiveDataProvider;
use app\models\ResetPassword;


/**
 * UsersController implements the CRUD actions for Users model.
 */
class UsersController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Users models.
     * @return mixed
     */
    public function actionIndex()
{
    if (!Yii::$app->user->isGuest) {
        $level = Yii::$app->user->identity->level;
        $searchModel = new SearchUsers();
        $query = Users::find();

        // Include deleted records for users with level 1
        if ($level == 1) {
            $query->where(['is_deleted' => [0, 1]]);
        } else {
            $query->where(['is_deleted' => 0]);
        }

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => [
                'defaultOrder' => [],
            ],
        ]);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'level' => $level,
        ]);
    }

    return $this->redirect(['/site/index']);
}
    

    /**
     * Displays a single Users model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
       
    }
/*
    public function actionForgotPassword()
    {
           if (Yii::$app->user->isGuest) 
           {
        $email = "";
        $alert = 0;
        if (Yii::$app->request->post("email")) {
           $email = Yii::$app->request->post("email");
           $user = Users::find()
                            ->where(['email' => $email])
                            ->one();
            $check_date = date("Y-m-d H:i:s", strtotime('-15 minutes'));
            $links = ResetPassword::find()
                                ->where(['email' => $email])
                                ->andWhere(['>','created_at', $check_date])
                                ->all();
            if(!$user){
                $alert = 1;
            }else if($links){
                $alert = 3;
            }else{
                
                $string = microtime() . $user->user_id;
               
                $url = "localhost/tech/web/users/change-password-rest";
                $result = Yii::$app->mailer->compose('reset_template', ['url' => $url])
                                ->setFrom('admin@git-mca.xyz')
                                ->setTo($email)
                                ->setSubject('Reset Password to Aptitude System')
                                ->send();
                if($result){
                    $alert = 2;
                    $reset_password = new ResetPassword();
                    $reset_password->email = $email;
                    $reset_password->reset_hash = $hash;
                    $reset_password->save();
                }else{
                    $alert = 4;
                }
                //send email
            }
           
        }
        
           }
     
        return $this->render('forgot-password',[
            'alert' => $alert,
        ]);
    }
    
    public function actionForgotPasswordReset()
    {
        $alert = 0;
        $model = new Users();
        if(Yii::$app->request->get('user') && Yii::$app->request->get('email')){
            $email = Yii::$app->request->get('email');
            $hash = Yii::$app->request->get('user');
            $check_date = date("Y-m-d H:i:s", strtotime('-15 minutes'));
            $result = ResetPassword::find()
                            ->where(['email' => $email])
                            ->andWhere(['reset_hash' => $hash])
                            ->andWhere(['>','created_at', $check_date])
                            ->one();
            if($result){
                $model = Users::find()
                            ->where(['email' => $email])
                            ->one();
            }else{
                return $this->render('error');

            }
        }
        $password = $model->password;
        $model->scenario = Users::SCENARIO_FORGOT_PASS;
        if(Yii::$app->request->isAjax && $model->load(Yii::$app->request->post())){
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ActiveForm::validate($model);
        }
        
        if ($model->load(Yii::$app->request->post())) {
               
                $model->password_repeat = $model->password;
                if($model->save()){
                    ResetPassword::deleteAll(['email' => $model->email]);
                    $alert = 1;
                }
            //return $this->redirect(['view','id' => $model->user_id]);
        }
        $model->password = "";
        $model->password_repeat = "";
        return $this->render('change-password-rest', [
            'model' => $model,
            'alert' => $alert,
        ]);
    }
*/
    /**
     * Creates a new Users model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Users();
    
        if ($model->load(Yii::$app->request->post())) {
            // Generate password hash
            $model->password = Yii::$app->security->generatePasswordHash($model->password);
            
            if ($model->save()) {
                Yii::$app->session->setFlash('success', 'User created successfully.'); // Set success flash message
                return $this->redirect(['index']); // Redirect to the index page
            } else {
                Yii::$app->session->setFlash('error', 'Failed to create user.'); // Set error flash message
            }
        }
    
        return $this->render('create', [
            'model' => $model,
        ]);
    }
    

    /**
     * Updates an existing Users model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
    
        if ($model->load(Yii::$app->request->post())) {
            // Generate password hash
            $model->password = Yii::$app->security->generatePasswordHash($model->password);
            
            if ($model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            }
        }
    
        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Users model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        $model->is_deleted = 1;
        $model->save(false); // Save without validation
    
        return $this->redirect(['index']);
    }

    public function actionChangePassword()
    {
        if (!Yii::$app->user->isGuest) {
            $model = new Password();
            
            if($model->load(Yii::$app->request->post())){
                $user = Users::find()->where(['user_id' => Yii::$app->user->identity->user_id])->one();
                $user->password =  $model->password1;
                $user->save(false);
                $this->redirect(['/site/index']);
            }
            return $this->render('change-password', [
                'model' => $model,
            ]);
            
        }else{
            throw new \yii\web\ForbiddenHttpException;
        }
    }

    


    /**
     * Finds the Users model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Users the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Users::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}