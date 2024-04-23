<?php

namespace app\controllers;

use Yii;
use app\models\Client;
use app\models\SearchClient;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\Response;
use app\models\Manager;
use yii\data\ActiveDataProvider;

/**
 * ClientController implements the CRUD actions for Client model.
 */
class ClientController extends Controller
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
     * Lists all Client models.
     * @return mixed
     */
    public function actionIndex()
    {
        if (!Yii::$app->user->isGuest) {
            $level = Yii::$app->user->identity->level;
            $searchModel = new SearchClient();
            $query = Client::find();
    
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
     * Displays a single Client model.
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


    public function actionGetDetails($managerId)
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        
        $manager = Manager::findOne($managerId);
        if ($manager) {
            return $this->renderAjax('_manager_details', [
                'manager' => $manager,
            ]);
        } else {
            return ['error' => 'Manager not found'];
        }
    }

    /**
     * Creates a new Client model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Client();
    
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            Yii::$app->session->setFlash('success', 'Client created successfully.'); // Set success flash message
            return $this->redirect(['index']); // Redirect to the index page
        }
    
        // Check if there are any errors during client creation
        if ($model->hasErrors()) {
            Yii::$app->session->setFlash('error', 'Failed to create client. Please check your input and try again.'); // Set error flash message
        }
    
        return $this->render('create', [
            'model' => $model,
        ]);
    }
    
    


    /**
     * Updates an existing Client model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->client_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Client model.
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

    /**
     * Finds the Client model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Client the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Client::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
