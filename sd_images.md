ВНИМАНИЕ! Страница описания образов в процессе наполнения.

# Klipper на Orange Pi3 LTS - легко и быстро
Здесь выложены предварительно настроенные образы Linux (Armbian и Debian) для Orange Pi3 LTS с уже установленным Klipper. 
Пользователю остаётся только настроить сеть и записать printer.cfg, соответствующий его 3д-принтеру.

Состояние кэша apt и версии пакетов актуальны на момент сборки образов (конец апреля 2023г)

Во всех образах установлены:
kiauh
Klipper
Moonraker
Fluidd
Klipperscreen

После настройки образы переведены в состояние "первого запуска": сброшены machine-id и ключи ssh_host, обрезано свободное место файловой системы.
При установке на пользовательский одноплатный компьютер образ автоматически будет расширен до размеров носителя, также будут сгенерированы уникальные machine_id и ssh_host_*

Все образы имеют преднастроенный klipperscreen, позволяющий выполнить настройку сети или посмотреть текущий IP адрес для подключения к web-интерфейсу Fluidd и доступа к ssh-консоли.

## Armbian 22.02.3 Bullseye Kernel 5.15.9?-sunxi64 TFT
Выполнены дополнительные настройки Klipperscreen для использования родного TFT-модуля 3D-принтера Flying Bear Ghost 6 (MKS TS35-R V2.0).
Образцовая конфигурация под кросс-плату Panama-PI.

username: pi    password: opi3lts

[opi3lts-armbian-klipper-23_02_2-tft.img.xz](https://disk.yandex.ru/d/ixubz9rLwWo_5w)    [[MD5](https://disk.yandex.ru/d/b65SwCyx3wrJKQ)]

## Debian 3.0.8 Bullseye Kernel 5.16.17-sun50iw6 TFT
Выполнены дополнительные настройки Klipperscreen для использования родного TFT-модуля 3D-принтера Flying Bear Ghost 6 (MKS TS35-R V2.0).
Образцовая конфигурация под кросс-плату Panama-PI.

username: orangepi    password: orangepi

[opi3lts-debian-klipper-5.16.17-tft.img.xz](https://disk.yandex.ru/d/NbC7Z7L7qGhJkA)    [[MD5](https://disk.yandex.ru/d/YX8rYuO5LvMLig)]

## Debian 3.0.8 Bullseye Kernel 5.16.17-sun50iw6 HDMI
Klipperscreen в оригинальном состоянии, сборка работает с HDMI-экранами, в частности, 7" тачскринами. 
Теоретически должен быть работоспособен с любым HDMI-экраном и HID-устройством ввода (мышь, тачскрин)

username: orangepi    password: orangepi

[opi3lts-debian-klipper-5.16.17-tft.img.xz](https://disk.yandex.ru/d/UV94V2JONHBnLg)    [[MD5](https://disk.yandex.ru/d/Y_Kp65xYlXajHw)]
