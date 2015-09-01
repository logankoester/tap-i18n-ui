# only show if TAPi18n is enabled
UI.registerHelper 'i18n_enabled', -> TAPi18n.conf?

# transform getLanguages into ordered array
UI.registerHelper 'i18n_sortedLanguages' , ->
  languages = TAPi18n.getLanguages()
  # map language tag into the object
  for key,val of languages
    languages[key].tag = key
  # return array sorted alphabetically by tag
  _.sortBy _.values languages, (language) -> language.tag

# check if language option is current language
UI.registerHelper 'i18n_isCurrentLanguage' , (tag) -> tag is I18NConf.getLanguage()

# find and decorate current language
UI.registerHelper 'i18n_currentLanguage' , ->
  I18NConf.getLanguage()
