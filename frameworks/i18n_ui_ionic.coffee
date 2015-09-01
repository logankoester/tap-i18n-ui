Template.i18n_dropdown_ionic.events
  # set language to selected option's tag
  'change .tap-i18n-dropdown select' : (e) ->
    I18NConf.setLanguage $(e.currentTarget).val()
