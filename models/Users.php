<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "users".
 *
 * @property int $user_id
 * @property string $email
 * @property string $password
 */
class Users extends \yii\db\ActiveRecord implements \yii\web\IdentityInterface
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'password', 'email', 'usn', 'xcgpa', 'xiicgpa', 'bachelorcgpa', 'sem1cgpa', 'profile', 'level'], 'required'],
            [['batch', 'mentor_id', 'level'], 'integer'],
            [[ 'xcgpa', 'xiicgpa', 'bachelorcgpa', 'sem1cgpa', 'sem2cgpa', 'sem3cgpa', 'sem4cgpa'], 'double'],
            [['created_at', 'updated_at'], 'safe'],
            [['username', 'password', 'email', 'usn', 'profile'], 'string', 'max' => 100],
            [['ismentor', 'hasMentor'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'user_id' => 'User ID',
            'username' => 'Username',
            'password' => 'Password',
            'email' => 'Email',
            'fullname' =>"Full Name",
            'level' => 'Level',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    public static function findIdentity($id)
    {
        return static::findOne($id);
    }

    public static function findIdentityByAccessToken($token, $type = null)
    {
        return null;
    }

    public function getId()
    {
        return $this->user_id;
    }

    public function getAuthKey()
    {
        return null;
    }

    public function validateAuthKey($authKey)
    {
        return null;
    }

    public static function findByUsername($username)
    {
        return Users::findOne(['email' => $username]);

        return null;
    }

    public function validatePassword($password)
    {
        return $this->password === $password;
    }


    public function getInternships()
    {
        return $this->hasMany(Internship::className(), ['user_id' => 'user_id']);
    }

    /**
     * Gets query for [[Profiles]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProfiles()
    {
        return $this->hasMany(Profile::className(), ['user_id' => 'user_id']);
    }

    /**
     * Gets query for [[Set2s]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSet2s()
    {
        return $this->hasMany(Set2::className(), ['user_id' => 'user_id']);
    }

    public function getMentor()
    {
        return $this->hasOne(Mentor::className(), ['id' => 'mentor_id']);
    }
}
