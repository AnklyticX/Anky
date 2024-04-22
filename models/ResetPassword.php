<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "reset_password".
 *
 * @property int $reset_password_id
 * @property string $reset_hash
 * @property string $email
 * @property string $created_at
 * @property string $updated_at
 */
class ResetPassword extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'reset_password';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['reset_hash', 'email'], 'required'],
            [['reset_hash'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['email'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'reset_password_id' => 'Reset Password ID',
            'reset_hash' => 'Reset Hash',
            'email' => 'Email',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
