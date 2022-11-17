<?php 

namespace modulus\main\payment\model;
use core\model;
use \library\session;
use \library\error;
use \Valitron\Validator as v;

class paymentModel extends model
{
    public function PaymentOrder()
    {
        user_level() > 1 ?: $this->return->code(404)->return('statusless')->time(10)->json();

        $this->db->trans();

        $amount = rand(10, 100);

        $user_level = user_level() > 2 ? user_level() : user_level() + 1;
        $user_coin = user_coin() + $amount;

        $update_user = $this->db->update('user', [
            'user_id' => user_id(),
            'user_level' => $user_level,
            'user_coin' => $user_coin,
            'user_created' => date('Y-m-d H:i:s'),
        ], ['id' => 'user_id']);


        $create_payment = $this->db->create('payment', [
            'payment_token' => uniqid(),
            'payment_amount' => $amount,
            'payment_time' => time() + 3600,
            'user_id' => user_id(),
        ]);

        $create_payment['status'] ?: $this->return->code(404)->return('error')->time(10)->json();

        session::update('user', [
            'user_coin' => $user_coin,
            'user_level' => $user_level
        ]);

        #commit the transaction
        $commit = $this->db->commit()
        ? $this->return->code(200)->return('success')->data([
            'user_coin' => $user_coin,
        ])->json()
        : $this->return->code(404)->return('error')->json();
    }


    public function OrderList()
    {
        return $this->db->t1where('payment', "user_id=? ORDER BY payment_id DESC LIMIT 50", [user_id()], 2);
    }

    public function PaymentStatus()
    {
        return $this->db->t1where('payment', "payment_status=0 && user_id=?", [user_id()]);
    }
}
