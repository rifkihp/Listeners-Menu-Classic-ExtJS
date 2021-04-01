
Ext.define('MyApp.view.mail.Mail',{
    extend: 'Ext.panel.Panel',
    xtype: 'email',

    requires: [
        'MyApp.view.mail.MailController',
        'MyApp.view.mail.MailModel'
    ],

    controller: 'mail-mail',
    viewModel: {
        type: 'mail-mail'
    },

    padding: 10,
    bodyPadding: 20,
    border: true,
    title: 'Email',

    html: 'Dan ini adalah halaman Email.'
});
