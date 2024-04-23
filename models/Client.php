<?php

namespace app\models;
use yii\behaviors\TimestampBehavior;

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
 * @property string|null $updated_at
 * @property int $is_deleted
 *
 * @property Manager $manager
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
            [['phonenumber'], 'match', 'pattern' => '/^\d{10}$/','message' => 'Phone number must contain exactly 10 digits and should be numbers only.'], // Ensure phonenumber contains only digits and is exactly 10 characters long
            [['email'], 'email'],
            [['companyname', 'email'], 'string', 'max' => 100],
            [['manager_id'], 'exist', 'skipOnError' => true, 'targetClass' => Manager::className(), 'targetAttribute' => ['manager_id' => 'manager_id']],
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
            'manager_id' => 'Manager',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'is_deleted' => 'Is Deleted',
        ];
    }

    /**
     * Gets query for [[Manager]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getManager()
    {
        return $this->hasOne(Manager::className(), ['manager_id' => 'manager_id']);
    }

    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::className(),
                'createdAtAttribute' => 'created_at',
                'updatedAtAttribute' => 'updated_at',
                'value' => function () {
                    return date('Y-m-d H:i:s');
                },
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {
            if ($this->isNewRecord) {
         
                $this->is_deleted = 0;
            }
            return true;
        }
        return false;
    }
}
