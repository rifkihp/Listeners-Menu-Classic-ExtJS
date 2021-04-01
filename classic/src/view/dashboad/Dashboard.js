
Ext.define('MyApp.view.dashboad.Dashboard',{
    extend: 'Ext.panel.Panel',
    xtype: 'admindashboard',

    requires: [
        'MyApp.view.dashboad.DashboardController',
        'MyApp.view.dashboad.DashboardModel'
    ],

    controller: 'dashboad-dashboard',
    viewModel: {
        type: 'dashboad-dashboard'
    },

    padding: 10,
    bodyPadding: 20,
    title: 'Dashboard',
    border: true,

    html: 'Hello, Ini adalah halaman Dashboard!!'
});
