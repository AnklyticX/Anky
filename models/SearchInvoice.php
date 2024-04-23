<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Invoice;

/**
 * SearchInvoice represents the model behind the search form of `app\models\Invoice`.
 */
class SearchInvoice extends Invoice
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['invoice_id', 'payment_status', 'client_id'], 'integer'],
            [['invoice_number', 'invoice_date', 'content', 'invoice_option', 'additional_fields', 'currency', 'created_at', 'updated_at'], 'safe'],
            [['gst', 'discount', 'total'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Invoice::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'invoice_id' => $this->invoice_id,
            'invoice_date' => $this->invoice_date,
            'gst' => $this->gst,
            'discount' => $this->discount,
            'payment_status' => $this->payment_status,
            'total' => $this->total,
            'client_id' => $this->client_id,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'invoice_number', $this->invoice_number])
            ->andFilterWhere(['like', 'content', $this->content])
            ->andFilterWhere(['like', 'invoice_option', $this->invoice_option])
            ->andFilterWhere(['like', 'additional_fields', $this->additional_fields])
            ->andFilterWhere(['like', 'currency', $this->currency]);

        return $dataProvider;
    }
}
