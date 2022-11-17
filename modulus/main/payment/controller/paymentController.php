<?php 

namespace modulus\main\payment\controller;
use modulus\main\payment\model\paymentModel;
use core\controller;

class paymentController extends controller
{
    public $payment;
    
    public function __construct()
    {
        $this->payment = new paymentModel();
    }

    public function PaymentInfo()
    {
        $this->layout('main', 'main', 'payment', 'info', []);
    }

    public function PaymentOrder()
    {
        $this->payment->PaymentOrder();
    }

    public function OrderList()
    {
        $this->layout('main', 'main', 'payment', 'list', [
            'payment' => $this->payment->OrderList(),
            'status' => $this->payment->PaymentStatus()
        ]);
    }
}

