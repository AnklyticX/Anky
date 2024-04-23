<?php

namespace app\controllers;

use app\models\Client;
use Yii;
use app\models\Invoice;
use app\models\SearchInvoice;
use DateTime;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;

/**
 * InvoiceController implements the CRUD actions for Invoice model.
 */
class InvoiceController extends Controller
{
    /**
     * @inheritdoc
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
     * Lists all Invoice models.
     * @return mixed
     */
    public function actionIndex()
    {
       
        $searchModel = new SearchInvoice();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Invoice model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
   /**
 * Displays a single Invoice model.
 * @param integer $id
 * @return mixed
 * @throws NotFoundHttpException if the model cannot be found
 */
public function actionView($id)
{
    if (!Yii::$app->user->isGuest) {
        $model = $this->findModel($id);
        return $this->render('view', [
            'model' => $model,
        ]);
    } else {
        throw new \yii\web\ForbiddenHttpException;
    }
}


    /**
     * Creates a new Invoice model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if(!Yii::$app->user->isGuest){
            $model = new Invoice();
            $client = new  Client();
            if ($client->load(Yii::$app->request->post())) {
                $client->user_id = Yii::$app->user->identity->user_id;
                $client->save(false);
                $client = new  Client();
            }

            return $this->render('create', [
                'model' => $model,
                'client' => $client,
            ]);
        }else{
            throw new \yii\web\ForbiddenHttpException;
        } 
    }
    public function actionReport()
    {
        if(!Yii::$app->user->isGuest){
            $payment_status = null;
            $searchModel = new SearchInvoice();
            $query = Invoice::find();
            $dataProvider = new ActiveDataProvider([
                'query' => $query,
                'sort' => [
                    'defaultOrder' => [
                        'invoice_date' => SORT_ASC,
                    ]
                ],
            ]);
            $start_date = date('Y-m-1');
            $end_date = date('Y-m-t');
            if(Yii::$app->request->get('start_date') && Yii::$app->request->get('end_date')){
                $start_date = Yii::$app->request->get('start_date');
                $end_date = Yii::$app->request->get('end_date');
                $payment_status = Yii::$app->request->get('payment_status');
            }
            $query->andFilterWhere(['between', 'invoice_date', $start_date, $end_date]);
            $query->andFilterWhere(['user_id' => Yii::$app->user->identity->user_id]);
            $query->andFilterWhere(['payment_status' => $payment_status]);
            return $this->render('report', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
                'start_date' => $start_date,
                'end_date' => $end_date,
                'payment_status' => $payment_status
            ]);
        }else{
            throw new \yii\web\ForbiddenHttpException;
        } 
    }
    public function actionSaveInvoice()
{
    if (!Yii::$app->user->isGuest) {
        $model = new Invoice();
        if ($model->load(Yii::$app->request->post())) {
            $contentArray = [];
            $fieldArray = [];
            $settingArray = [];

            // Assuming other fields are loaded properly
            $model->content = json_encode($contentArray);
            $model->additional_fields = json_encode($fieldArray);
            $model->invoice_option = json_encode($settingArray);

            if ($model->validate() && $model->save()) {
                if ($model->invoice_number == "") {
                    $dt = DateTime::createFromFormat('!d/m/Y', date("d/m/Y"));
                    $model->invoice_number = "INTL/" . strtoupper($dt->format('M')) . $dt->format("y") . "/" . $model->invoice_id;
                    $model->save();
                }
                return $this->redirect(['view', 'id' => $model->invoice_id]);
            } else {
                // Handle validation or saving errors
                Yii::$app->session->setFlash('error', 'Failed to save the invoice.');
            }
        }
    } else {
        throw new \yii\web\ForbiddenHttpException;
    }
}


    /**
     * Updates an existing Invoice model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        if (!Yii::$app->user->isGuest) {
            $model = $this->findModel($id);
            $client = new Client();
            if ($client->load(Yii::$app->request->post())) {
                $client->save(false);
                $client = new Client();
            }
            return $this->render('update', [
                'model' => $model,
                'client' => $client,
            ]);
        } else {
            throw new \yii\web\ForbiddenHttpException;
        }
    }

    /**
 * Updates an existing Invoice model based on user input.
 * If update is successful, the browser will be redirected to the 'view' page.
 * @return mixed
 * @throws NotFoundHttpException if the model cannot be found
 */
public function actionUpdateInvoice()
{
    if (!Yii::$app->user->isGuest) {
        $model = new Invoice();
        if ($model->load(Yii::$app->request->post())) {
            $invoice = $this->findModel($model->invoice_id);
            if ($invoice !== null) {
                $contentArray = [];
                $fieldArray = [];
                $settingArray = [];

                $invoice->gst = $model->gst;
                $invoice->discount = $model->discount;
                $invoice->payment_status = $model->payment_status;
                $invoice->invoice_date = $model->invoice_date;
                $invoice->invoice_number = $model->invoice_number;
                $invoice->currency = $model->currency;
                $invoice->client_id = $model->client_id;

                if (is_array($model->qty)) {
                    foreach ($model->qty as $key => $value) {
                        $tmp = [$model->item[$key], $model->description[$key], $model->price[$key], $model->qty[$key]];
                        $contentArray[] = $tmp;
                    }
                }
                $invoice->content = json_encode($contentArray);

                if (is_array($model->field_value)) {
                    foreach ($model->field_value as $key => $value) {
                        $tmp = [$model->field_label[$key], $model->field_value[$key]];
                        $fieldArray[] = $tmp;
                    }
                }
                $invoice->additional_fields = json_encode($fieldArray);

                if (is_array($model->print_setting)) {
                    foreach ($model->print_setting as $key => $value) {
                        $settingArray[] = $value;
                    }
                }
                $invoice->invoice_option = json_encode($settingArray);

                if ($invoice->validate() && $invoice->save()) {
                    return $this->redirect(['view', 'id' => $model->invoice_id]);
                } else {
                    // Handle validation or saving errors
                    Yii::$app->session->setFlash('error', 'Failed to update the invoice.');
                }
            } else {
                throw new NotFoundHttpException('The requested invoice does not exist.');
            }
        }
    } else {
        throw new \yii\web\ForbiddenHttpException;
    }
}



    /**
     * Deletes an existing Invoice model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
/**
 * Renders a printable version of an invoice.
 * @return mixed
 * @throws NotFoundHttpException if the model cannot be found
 */
public function actionPrint()
{
    if (!Yii::$app->user->isGuest) {
        $id = Yii::$app->request->get("id");
        $print_layout = Yii::$app->request->get("layout");
        $model = $this->findModel($id);
        
        if ($model !== null) {
            $this->layout = 'print';
            return $this->render($print_layout, [
                'model' => $model,
            ]);
        } else {
            throw new NotFoundHttpException('The requested invoice does not exist.');
        }
    } else {
        throw new \yii\web\ForbiddenHttpException;
    }
}

    public function actionDelete($id)
    {
        if(!Yii::$app->user->isGuest){
            $model = $this->findModel($id);    
            $user_id = Yii::$app->user->identity->user_id;
            if($model->user_id == $user_id){
                $model->delete();
                return $this->redirect(['index']);
            }else{
                throw new \yii\web\ForbiddenHttpException;
            } 
        }else{
            throw new \yii\web\ForbiddenHttpException;
        } 
    }

    /**
     * Finds the Invoice model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Invoice the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Invoice::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
