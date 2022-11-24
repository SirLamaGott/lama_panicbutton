local Translations = {
    info = {
        panicbutton = 'Panic Button',
        positionbutton = 'Position Button',
        waypoint = 'Press ~INPUT_CONTEXT~ to set a waypoint or ~INPUT_DETONATE~, to decline the request.',
    }
}

Lang = Locale:new({ 
    phrases = Translations,
    warnOnMissing = true,
    fallbackLang = Lang,
})