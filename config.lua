Config = {}

Config.Locale = 'en'
Config.UseSounds = true -- requires: interact-sound

Config.PanicButton = 'PAGEDOWN' -- standard key for keymapping
Config.PositionButton = 'PAGEUP' -- standard key for keymapping

Config.PanicButtonLayout = {

    Title = 'Police System',
    SubTitle = '~r~PANIC BUTTON',

    Content = 'Officer ~r~%s~s~ has fired his panic button!', 
    Icon = 'CHAR_CALL911'

}

Config.PositionButtonLayout = {

    Title = 'Police System',
    SubTitle = '~b~Position',

    Content = 'Officer ~b~%s~s~ has send his location!',
    Icon = 'CHAR_CALL911'

}
