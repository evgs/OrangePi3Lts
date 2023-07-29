# Кнопка Shutdown на экране KlipperScreen

При наличии возможности снимать с принтера и одноплатного компьютера питание при помощи модуля Btt Relay типовой сеанс работы с принтером заканчивается выключением Linux-хоста вызовом команды shutdown.

По умолчанию эта команда спрятана достаточно глубоко (Menu/Settings->System->Shutdown->Host). Ниже предлагается вынести данную команду на главный уровень KlipperScreen.

Необходимо внести в файл KlipperScreen.conf следующие изменения:

1. Поменять переменную
```
use_default_menu: True
```

2. Добавить секцию с описанием кнопки
```
[menu __main my_menu_shutdown]
name: Shutdown
icon: shutdown
method: printer.gcode.script
params: {"script":"SHUTDOWN_MACHINE"}
```

Данная кнопка доступна только при простое принтера. В процессе печати кнопку нажать случайно или намеренно невозможно, т.к. активен экран прргресса печати.

## Пример готового файла KlipperScreen.conf
[KlipperScreen.conf](KlipperScreen.conf.example)
