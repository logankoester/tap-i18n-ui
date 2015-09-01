Template.i18n_dropdown.events
  # set language to selected option's tag
  'change .tap-i18n-dropdown select' : (e) ->
    I18NConf.setLanguage $(e.currentTarget).val()

Template.i18n_buttons.events
  # set language to context tag
  'click .tap-i18n-buttons button' : (e,tmpl) ->
    I18NConf.setLanguage @tag
