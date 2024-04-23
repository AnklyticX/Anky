<?php

namespace app\controllers;

use Yii;
use app\models\Manager;
use app\models\SearchManager;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\Response;
use yii\data\ActiveDataProvider;

/**
 * ManagerController implements the CRUD actions for Manager model.
 */
class ManagerController extends Controller
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
     * Lists all Manager models.
     * @return mixed
     */
    public function actionIndex()
{
    if (!Yii::$app->user->isGuest) {
        $level = Yii::$app->user->identity->level;
        $searchModel = new SearchManager();
        $query = Manager::find();

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
     * Displays a single Manager model.
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

    /**
     * Creates a new Manager model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Manager();
    
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            Yii::$app->session->setFlash('success', 'Manager created successfully.'); // Set success flash message
            return $this->redirect(['index']); // Redirect to the index page
        }
    
        // Check if there are any errors during client creation
        if ($model->hasErrors()) {
            Yii::$app->session->setFlash('error', 'Failed to create manager. Please check your input and try again.'); // Set error flash message
        }
    
        return $this->render('create', [
            'model' => $model,
        ]);
    } 

    /**
     * Updates an existing Manager model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->manager_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Manager model.
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
     * Finds the Manager model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Manager the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Manager::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
