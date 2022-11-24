Config = {}

Config.Locale = 'en' -- your language, this script comes with: en, de
Config.UseSounds = false -- requires: interact-sound (xsound coming soon!)

Config.PanicButton = 'PAGEDOWN' -- standard key for keymapping
Config.PositionButton = 'PAGEUP' -- standard key for keymapping

Config.PanicButtonLayout = {

    Title = 'Police System', -- title of the notification
    SubTitle = '~r~PANIC BUTTON', -- subtitle of the notification
  
    Content = 'Officer ~r~%s~s~ has fired his panic button!', -- "%s" is the officer name
    Icon = 'CHAR_CALL911' -- icons can be found here: https://wiki.rage.mp/index.php?title=Notification_Pictures

}

Config.PositionButtonLayout = {

    Title = 'Police System',
    SubTitle = '~b~Position',

    Content = 'Officer ~b~%s~s~ has send his location!',
    Icon = 'CHAR_CALL911'

}
