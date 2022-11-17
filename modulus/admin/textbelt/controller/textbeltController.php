<?php 

namespace modulus\admin\textbelt\controller;
use modulus\admin\textbelt\model\textbeltModel;
use core\controller;
use \library\pagination as p;

class textbeltController extends controller
{
    public $textbelt;
    
    public function __construct()
    {
        $this->text = new textbeltModel();
        $this->p = new p();
    }

    public function TextList()
    {
        $this->layout('admin', 'admin', 'textbelt', 'text/list', [
            'page' => $p = $this->p->page($this->text->TextCount(), 8),
            'textbelt' => $this->text->TextList($p->start, $p->limit)
        ]);
    }

    public function TextRead($sms_id)
    {
        $this->view('admin', 'textbelt', 'text/read', (object) [
            'textbelt' => $this->text->TextRead($sms_id)
        ]);
    }

    #
    public function TextSearch()
    {
        $this->view('admin', 'textbelt', 'text/search', (object) []);
    }

    public function __TextSearch()
    {
        $this->text->__TextSearch();
    }

    public function ChannelList()
    {
        $this->layout('static', 'admin', 'textbelt', 'channel/list', [
            'page' => $p = $this->p->page($this->text->ChannelCount(), 8),
            'textbelt' => $this->text->ChannelList($p->start, $p->limit)
        ]);
    }

    public function TunnelList()
    {
        $this->layout('static', 'admin', 'textbelt', 'tunnel/list', [
            'page' => $p = $this->p->page($this->text->TunnelCount(), 8),
            'textbelt' => $this->text->TunnelList($p->start, $p->limit)
        ]);
    }

    public function textbeltToken()
    {
        $this->layout('dynamic', 'admin', 'textbelt', 'token/list', [
            'textbelt' => $this->text->textbeltToken()
        ]);
    }

    public function textbeltTokenStatus($token_id)
    {
        $this->text->textbeltTokenStatus($token_id);
    }

    public function TextbeltTokenUpdate($token_id)
    {
        $this->view('admin', 'textbelt', 'token/update', (object) [
            'token' => $this->text->TextbeltTokenUpdate($token_id)
        ]);
    }

    public function __textbeltTokenUpdate()
    {
        $this->text->__textbeltTokenUpdate();
    }

    public function CallerList()
    {
        $this->layout('ordinary', 'admin', 'textbelt', 'caller/list', [
            'page' => $p = $this->p->page($this->text->CallerCount(), 8),
            'textbelt' => $this->text->CallerList($p->start, $p->limit)
        ]);
    }
}

