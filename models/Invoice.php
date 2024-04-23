<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "invoice".
 *
 * @property int $invoice_id
 * @property string $invoice_number
 * @property string $invoice_date
 * @property int $gst
 * @property int $discount
 * @property string $content
 * @property string $invoice_option
 * @property string $additional_fields
 * @property int $payment_status
 * @property string $currency
 * @property int $client_id
 * @property string $created_at
 * @property string $updated_at
 *
 * @property Client $client
 */
class Invoice extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */

    public $qty;
    public $item;
    public $description;
    public $price;
    public $field_label;
    public $field_value;
    public $print_setting;
    public static function tableName()
    {
        return 'invoice';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [[ 'client_id', 'invoice_date'], 'required'],
            [['invoice_date', 'created_at', 'updated_at', 'invoice_number', 'user_id', 'invoice_id'], 'safe'],
            [['qty', 'item', 'description', 'price', 'field_label', 'field_value', 'print_setting'], 'safe'],
            [['payment_status', 'client_id'], 'integer'],
            [['gst', 'discount', 'total'], 'number'],
            [['content', 'invoice_option', 'additional_fields'], 'string'],
            [['invoice_number', 'currency'], 'string', 'max' => 20],
            [['client_id'], 'exist', 'skipOnError' => true, 'targetClass' => Client::className(), 'targetAttribute' => ['client_id' => 'client_id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'invoice_id' => 'Invoice ID',
            'invoice_number' => 'Invoice Number',
            'invoice_date' => 'Invoice Date',
            'gst' => 'GST',
            'discount' => 'Discount',
            'content' => 'Content',
            'invoice_option' => 'Invoice Option',
            'additional_fields' => 'Additional Fields',
            'payment_status' => 'Payment Status',
            'currency' => 'Currency',
            'client_id' => 'Client ID',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getClient()
    {
        return $this->hasOne(Client::className(), ['client_id' => 'client_id']);
    }
 
}
