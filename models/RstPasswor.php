<?php

// models/PasswordReset.php

namespace app\models;

use Yii;
use yii\base\Model;

class PasswordReset extends Model
{
    public $email;

    public function rules()
    {
        return [
            [['email'], 'required'],
            [['email'], 'email'],
        ];
    }

    public function generateOTP()
    {
        return str_pad(random_int(0, 999999), 6, '0', STR_PAD_LEFT);
    }

    public function sendOTP()
    {
        $otp = $this->generateOTP();

        $expireAt = time() + 900; // OTP will expire in 15 minutes (900 seconds)

        // Save OTP data to the database
        Yii::$app->db->createCommand()->insert('{{%password_reset}}', [
            'email' => $this->email,
            'otp' => $otp,
            'expire_at' => $expireAt,
        ])->execute();

        // Send OTP via email
        Yii::$app->mailer->compose()
            ->setFrom('your-sender-email@example.com')
            ->setTo($this->email)
            ->setSubject('Password Reset OTP')
            ->setTextBody("Your OTP for password reset: $otp")
            ->send();
    }
}


?>