<?php 

namespace modulus\admin\Setting\controller;
use modulus\admin\Setting\model\SettingModel;
use core\controller;

class SettingController extends controller
{
    public $setting;
    
    public function __construct()
    {
        $this->setting = new settingModel();
    }

    public function settingStatic()
    {
        $this->layout('static', 'admin', 'setting', 'static', [
            'setting' => $this->setting->SettingList('static')
        ]);
    }

    public function settingDynamic()
    {
        $this->layout('static', 'admin', 'setting', 'dynamic', [
            'setting' => $this->setting->SettingList('dynamic')
        ]);
    }
}

