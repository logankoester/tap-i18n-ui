Package.describe({
  name: 'ldk:i18n-ui',
  summary: 'Fork of tap:i18n-ui with martino:i18n-conf compatibility and Ionic Framework',
  version: '1.0.0',
  git: 'https://github.com/logankoester/meteor-i18n-ui'
});

Package.onUse(function (api) {
  api.versionsFrom('METEOR@0.9.1');

  api.use("tap:i18n@1.5.1");
  api.use("martino:i18n-conf@0.3.3");

  api.use(['coffeescript','underscore','templating',], 'client');

  api.add_files([
    'i18n_conf.coffee',
    'i18n_ui_client_helpers.coffee',
    'frameworks/i18n_ui_bootstrap.html',
    'frameworks/i18n_ui_bootstrap.coffee',
    'frameworks/i18n_ui_semantic.html',
    'frameworks/i18n_ui_semantic.coffee',
    'frameworks/i18n_ui_ionic.html',
    'frameworks/i18n_ui_ionic.coffee'
  ], 'client');
});
