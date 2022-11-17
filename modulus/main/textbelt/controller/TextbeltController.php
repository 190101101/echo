<?php 

namespace modulus\main\Textbelt\controller;
use modulus\main\Textbelt\model\TextbeltModel;
use core\controller;

class TextbeltController extends controller
{
    public $text;
    
    public function __construct()
    {
        $this->text = new TextbeltModel();
    }

    public function textSend()
    {
        $this->layout('main', 'main', 'textbelt', 'sms/send', []);
    }

    public function TextBuy($product_type, $product_token)
    {
        $this->text->TextBuy($product_type, $product_token);
    }
    
    public function textSendSms()
    {
        $this->text->textSendSms();
    }

    public function textList()
    {
        $this->layout('main', 'main', 'textbelt', 'sms/list', [
            'sms' => $this->text->textList()
        ]);
    }

    #
    public function ChannelCall()
    {
        $this->text->ChannelCall();
    }

    public function ChannelList()
    {
        $this->layout('main', 'main', 'textbelt', 'channel/list', [
            'channel' => $this->text->ChannelList()
        ]);
    }

    #
    public function TunnelCall()
    {
        $this->text->TunnelCall();
    }

    public function TunnelList()
    {
        $this->layout('main', 'main', 'textbelt', 'tunnel/list', [
            'tunnel' => $this->text->TunnelList()
        ]);
    }
}
