<?php 

namespace modulus\main\service\controller;
use modulus\main\service\model\serviceModel;
use core\controller;

class serviceController extends controller
{
    public $service;
    
    public function __construct()
    {
        $this->service = new serviceModel();
    }

    public function ServiceList()
    {
        $this->layout('main', 'main', 'service', 'list', [
            'product' => $this->service->ServiceProduct()
        ]);
    }

    public function ServiceUsed()
    {
        $this->layout('main', 'main', 'service', 'used', [
            'sale' => $this->service->ServiceUsed()
        ]);
    }
}
