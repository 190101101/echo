<?php 

namespace modulus\admin\payment\controller;
use modulus\admin\payment\model\paymentModel;
use core\controller;
use \library\pagination as p;

class paymentController extends controller
{
    public $payment;
    
    public function __construct()
    {
        $this->payment = new paymentModel();
        $this->p = new p();
    }

    public function paymentList()
    {
        $this->layout('normal', 'admin', 'payment', 'list', [
            'page' => $p = $this->p->page($this->payment->paymentCount(), 8),
            'payment' => $this->payment->paymentList($p->start, $p->limit)
        ]);
    }

    public function paymentSearch()
    {
        $this->view('admin', 'payment', 'search');
    }

    public function __paymentSearch()
    {
        $this->payment->__paymentSearch();
    }
}

