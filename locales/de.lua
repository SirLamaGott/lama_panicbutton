local Translations = {
    panicbutton = 'Notfall Knopf',
    positionbutton = 'Positions Knopf'
    waypoint = 'Drücke ~INPUT_CONTEXT~ um einen Wegpunkt zu setzen oder ~INPUT_DETONATE~, um die Anfrage abzulehnen.'
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})