<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "client".
 *
 * @property int $client_id
 * @property string $companyname
 * @property string $email
 * @property int $phonenumber
 * @property int $manager_id
 * @property string $created_at
 * @property string $updated_at
 * @property int $is_deleted
 */
class Client extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'client';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['companyname', 'email', 'phonenumber', 'manager_id'], 'required'],
            [['phonenumber', 'manager_id', 'is_deleted'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['companyname', 'email'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'client_id' => 'Client ID',
            'companyname' => 'Companyname',
            'email' => 'Email',
            'phonenumber' => 'Phonenumber',
            'manager_id' => 'Manager ID',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'is_deleted' => 'Is Deleted',
        ];
    }
}
