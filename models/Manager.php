<?php

namespace app\models;
use yii\behaviors\TimestampBehavior;

use Yii;

/**
 * This is the model class for table "manager".
 *
 * @property int $manager_id
 * @property string $name
 * @property string $email
 * @property string $address
 * @property int $phonenumber
 * @property string|null $created_at
 * @property string|null $updated_at
 * @property int|null $is_deleted
 *
 * @property Client[] $clients
 */
class Manager extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'manager';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'email', 'address', 'phonenumber'], 'required'],
            [['phonenumber', 'is_deleted'], 'integer'],
            [['phonenumber'], 'match', 'pattern' => '/^\d{10}$/','message' => 'Phone number must contain exactly 10 digits and should be numbers only.'], // Ensure phonenumber contains only digits and is exactly 10 characters long
            [['email'], 'email'],
            [['created_at', 'updated_at'], 'safe'],
            [['name', 'email', 'address'], 'string', 'max' => 100],
        ];
    }
    

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'manager_id' => 'Manager ID',
            'name' => 'Name',
            'email' => 'Email',
            'address' => 'Address',
            'phonenumber' => 'Phone number',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'is_deleted' => 'Is Deleted',
        ];
    }

    /**
     * Gets query for [[Clients]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getClients()
    {
        return $this->hasMany(Client::className(), ['manager_id' => 'manager_id']);
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
