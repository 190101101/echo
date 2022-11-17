<?php 

use core\app;
// ([0-9a-zA-Z-_]+)
// ([0-9a-zA-Z-_]+)
// ([0-9a-zA-Z-_\?\=\&\+]+)
// ([0-9]+)

/*panel*/
app::get('/panel/admin', '/panel/panelInfo', 'admin', ['Panel']);

/*setting*/
app::get('/panel/setting/static/list', '/Setting/settingStatic', 'admin', ['Panel']);
app::get('/panel/setting/dynamic/list', '/Setting/SettingDynamic', 'admin', ['Panel']);

/*user*/
app::get('/panel/user/list/page/([0-9]+)', '/user/UserList', 'admin', ['Panel']);
app::get('/panel/user/status/([0-9]+)', '/user/userStatus/([0-9]+)', 'admin', ['Panel']);
app::get('/panel/user/create', '/user/UserCreate', 'admin', ['Panel']);
app::post('/panel/user/create', '/user/__UserCreate', 'admin', ['Panel']);
app::get('/panel/user/update/([0-9]+)', '/user/_userUpdate/([0-9]+)', 'admin', ['Panel']);
app::post('/panel/user/update', '/user/__userUpdate', 'admin', ['Panel']);
app::get('/panel/user/delete/([0-9]+)', '/user/userDelete/([0-9]+)', 'admin', ['Panel']);
app::get('/panel/user/search', '/user/userSearch', 'admin', ['Panel']);
app::post('/panel/user/search', '/user/__userSearch', 'admin', ['Panel']);

/*product*/
app::get('/panel/product/list', '/product/productList', 'admin', ['Panel']);
app::get('/panel/product/status/([0-9]+)', '/product/productStatus/([0-9]+)', 'admin', ['Panel']);
app::get('/panel/product/create', '/product/productCreate', 'admin', ['Panel']);
app::post('/panel/product/create', '/product/__productCreate', 'admin', ['Panel']);
app::get('/panel/product/update/([0-9]+)', '/product/_productUpdate/([0-9]+)', 'admin', ['Panel']);
app::post('/panel/product/update', '/product/__productUpdate', 'admin', ['Panel']);
app::get('/panel/product/delete/([0-9]+)', '/product/productDelete/([0-9]+)', 'admin', ['Panel']);

/*sale*/
app::get('/panel/sale/list/page/([0-9]+)', '/sale/saleList', 'admin', ['Panel']);
app::get('/panel/sale/search', '/sale/saleSearch', 'admin', ['Panel']);
app::post('/panel/sale/search', '/sale/__saleSearch', 'admin', ['Panel']);

/*payment*/
app::get('/panel/payment/list/page/([0-9]+)', '/payment/paymentList', 'admin', ['Panel']);
app::get('/panel/payment/search', '/payment/paymentSearch', 'admin', ['Panel']);
app::post('/panel/payment/search', '/payment/__paymentSearch', 'admin', ['Panel']);

/*textbelt*/
app::get('/panel/textbelt/sms/list/page/([0-9]+)', '/textbelt/TextList', 'admin', ['Panel']);
app::get('/panel/textbelt/sms/read/([0-9]+)', '/textbelt/TextRead/([0-9]+)', 'admin', ['Panel']);
app::get('/panel/textbelt/sms/search', '/textbelt/TextSearch', 'admin', ['Panel']);
app::post('/panel/textbelt/sms/search', '/textbelt/__TextSearch', 'admin', ['Panel']);


app::get('/panel/textbelt/channel/list/page/([0-9]+)', '/textbelt/ChannelList', 'admin', ['Panel']);
app::get('/panel/textbelt/tunnel/list/page/([0-9]+)', '/textbelt/TunnelList', 'admin', ['Panel']);

app::get('/panel/textbelt/token/list', '/textbelt/textbeltToken', 'admin', ['Panel']);
app::get('/panel/textbelt/token/status/([0-9]+)', '/textbelt/textbeltTokenStatus/([0-9]+)', 'admin', ['Panel']);
app::get('/panel/textbelt/token/update/([0-9]+)', '/textbelt/textbeltTokenUpdate/([0-9]+)', 'admin', ['Panel']);
app::post('/panel/textbelt/token/update', '/textbelt/__textbeltTokenUpdate', 'admin', ['Panel']);


app::get('/panel/textbelt/caller/list/page/([0-9]+)', '/textbelt/CallerList', 'admin', ['Panel']);
