<?php 

use core\app;
// ([0-9a-zA-Z-_]+)
// ([0-9a-zA-Z-_]+)
// ([0-9a-zA-Z-_\?\=\&\+]+)
// ([0-9]+)

/*sms*/
app::get('/', '/Textbelt/textSend', 'main', ['Auth']);
app::get('/sms/text/send', '/Textbelt/textSend', 'main', ['Auth']);
app::post('/sms/text/send', '/Textbelt/textSendSms', 'main', ['Auth']);
app::get('/sms/text/list', '/Textbelt/textList', 'main', ['Auth']);

/*channel*/
app::get('/sms/text/channel/call', '/Textbelt/ChannelCall', 'main');
app::get('/sms/text/channel/list', '/Textbelt/ChannelList', 'main');

/*tunnel*/
app::get('/sms/text/tunnel/call', '/Textbelt/TunnelCall', 'main');
app::get('/sms/text/tunnel/list', '/Textbelt/TunnelList', 'main');

/*profile*/
app::get('/profile/info', '/profile/profileInfo', 'main', ['Auth']);
app::get('/profile/agreement', '/profile/profileAgreement', 'main', ['Auth']);
app::get('/profile/contact', '/profile/contactList', 'main', ['Auth']);

/*notice*/
app::get('/notification/list', '/notice/notification', 'main', ['Auth']);

/*payment*/
app::get('/payment/order/list', '/payment/OrderList', 'main', ['Auth']);
app::get('/payment/token/info', '/payment/PaymentInfo', 'main', ['Auth']);
app::get('/payment/token/order', '/payment/PaymentOrder', 'main', ['Auth']);

/*information*/
app::get('/information/about', '/info/infoAbout', 'main', ['Auth']);
app::get('/information/rule', '/info/infoRule', 'main', ['Auth']);
app::get('/information/rule/more/([0-9]+)', '/info/infoRuleMore/([0-9]+)', 'main', ['Auth']);
app::get('/information/question', '/info/infoQuestion', 'main', ['Auth']);
app::get('/information/question/more/([0-9]+)', '/info/infoQuestionMore/([0-9]+)', 'main', ['Auth']);

/*service*/
app::get('/services/product/used', '/service/serviceUsed', 'main', ['Auth']);
app::get('/services/product/list', '/service/ServiceList', 'main', ['Auth']);
app::get('/services/product/info/([0-9a-zA-Z-_]+)/([0-9a-zA-Z-_]+)', '/product/productInfo/([0-9a-zA-Z-_]+)/([0-9a-zA-Z-_]+)', 'main', ['Auth']);

/*text*/
app::get('/services/product/buy/([0-9a-zA-Z-_]+)/([0-9a-zA-Z-_]+)', 
	'/Textbelt/TextBuy/([0-9a-zA-Z-_]+)/([0-9a-zA-Z-_]+)', 'main', ['Auth']);

/*dd*/
app::get('/dd', '/dd/dd', 'main');
app::post('/dd', '/dd/dd', 'main');
app::get('/dd2', '/dd/dd2', 'main');

/*auth*/
app::get('/auth', '/auth/auth', 'auth', ['Authless']);
app::post('/auth', '/auth/__auth', 'auth', ['Authless']);
app::get('/auth/cheek/([0-9a-zA-Z-_]+)', '/auth/authCheek/([0-9a-zA-Z-_]+)', 'auth', ['AuthCheck']);

/*error*/
app::get('/404', '/error/PageNotFound', 'main', ['Auth']);
app::get('/error/type/([0-9a-zA-Z-_]+)', '/error/errorType/([0-9a-zA-Z-_]+)', 'main');
