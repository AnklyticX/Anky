<?php
 
namespace app\models;
 
use Yii;
 
class Password extends \yii\db\ActiveRecord
{
 
   public $password1;
   public $password2;
   public function rules()
   {
       return [
           [['password1', 'password2'], 'string'],
           [['password1', 'password2'], 'required'],
           ['password2', 'compare', 'compareAttribute' => 'password1', 'message' => 'Passwords don\'t match'],
       ];
   }
 
   /**
    * {@inheritdoc}
    */
   public function attributeLabels()
   {
       return [
           'password1' => 'Password',
           'password2' => 'Repeat Password',
       ];
   }
 
}
?>
