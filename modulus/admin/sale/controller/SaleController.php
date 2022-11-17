<?php 

namespace modulus\admin\sale\controller;
use modulus\admin\sale\model\saleModel;
use core\controller;
use \library\pagination as p;

class saleController extends controller
{
    public $sale;
    
    public function __construct()
    {
        $this->sale = new saleModel();
        $this->p = new p();
    }

    public function saleList()
    {
        $this->layout('normal', 'admin', 'sale', 'list', [
            'page' => $p = $this->p->page($this->sale->saleCount(), 8),
            'sale' => $this->sale->saleList($p->start, $p->limit)
        ]);
    }

    public function saleSearch()
    {
        $this->view('admin', 'sale', 'search');
    }

    public function __saleSearch()
    {
        $this->sale->__saleSearch();
        /*
        $this->layout('admin', 'admin', 'sale', 'saleSearch', [
            'sale' => $this->sale->__saleSearch(),
            'search' => $post,
        ]);
        */
    }
}

