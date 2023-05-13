ВНИМАНИЕ! Страница описания образов в процессе наполнения.

# Klipper на Orange Pi3 LTS - легко и быстро
Здесь выложены предварительно настроенные образы Linux (Armbian и Debian) для Orange Pi3 LTS с уже установленным Klipper. 
Пользователю остаётся только настроить сеть и записать printer.cfg, соответствующий его 3д-принтеру.

Состояние кэша apt и версии пакетов актуальны на момент сборки образов (конец апреля 2023г)

Во всех образах установлены:
* kiauh
* Klipper
* Moonraker
* Fluidd
* Klipperscreen

После настройки образы переведены в состояние "первого запуска": сброшены machine-id и ключи ssh_host, обрезано свободное место файловой системы.
При установке на пользовательский одноплатный компьютер образ автоматически будет расширен до размеров носителя, также будут сгенерированы уникальные machine_id и ssh_host_*

## Установка образа
1. Скачать и распаковать необходимый образ
2. Записать образ на microSD, например, при помощи Balena Etcher. Линуксоидам - dd или ddrescue.
3. Вставить флэшку в одноплатный компьютер OrangePi3 LTS.
4. Подключить соответствующий образу экран (SPI TFT или HDMI).
5. Рекомендуется подключить одноплатник в локальную сеть по Ethernet (Наиболее простой способ настройки, если экран отсутствует)
6. Включить питание одноплатника, дождаться завершения загрузки и появления интерфейса Klipperscreen
7. Перейти в Settings->Network и посмотреть текущий IP-адрес
8. (альтернативно) Settings->Network, подключиться к желаемой беспроводной сети, указав SSID и пароль.
9. Открыть в браузере страницу управления принтера, введя в адресной строке ранее полученный IP.
10. Выполнить настройку printer.cfg, используя документацию Klipper Configuration Reference, а также [гитхаб ТомТомыча]. 
11. Подключение принтера выполняются либо через USB-интерфейс, либо через последовательный порт одноплатника USART3 (/dev/ttyS3).
98. Рекомендуется выполнить резервную копию конфигурационного файла printer.cfg


## Armbian 22.02.3 Bullseye Kernel 5.15.9?-sunxi64 SPI-TFT
Выполнены дополнительные настройки Klipperscreen для использования родного SPI-TFT-модуля 3D-принтера Flying Bear Ghost 6 (MKS TS35-R V2.0).
Образцовая конфигурация под кросс-плату Panama-PI.

| Ссылка  | Контрольная сумма  | username  | password  |
|---------|--------------------|-----------|-----------|
| [opi3lts-armbian-klipper-23_02_2-tft.img.xz](https://disk.yandex.ru/d/ixubz9rLwWo_5w)  | [MD5](https://disk.yandex.ru/d/b65SwCyx3wrJKQ)  | pi  | opi3lts  |


## Debian 3.0.8 Bullseye Kernel 5.16.17-sun50iw6 SPI-TFT
Выполнены дополнительные настройки Klipperscreen для использования родного SPI-TFT-модуля 3D-принтера Flying Bear Ghost 6 (MKS TS35-R V2.0).
Образцовая конфигурация под кросс-плату Panama-PI.

| Ссылка  | Контрольная сумма  | username  | password  |
|---------|--------------------|-----------|-----------|
| [opi3lts-debian-klipper-5.16.17-tft.img.xz](https://disk.yandex.ru/d/NbC7Z7L7qGhJkA)  | [MD5](https://disk.yandex.ru/d/YX8rYuO5LvMLig)  | orangepi  | orangepi  |


## Debian 3.0.8 Bullseye Kernel 5.16.17-sun50iw6 HDMI
Klipperscreen в оригинальном состоянии, сборка работает с HDMI-экранами, в частности, 7" тачскринами. 
Теоретически должен быть работоспособен с любым HDMI-экраном и HID-устройством ввода (мышь, тачскрин)

Данный образ также рекомендуется при работе без какого-либо дисплея.

| Ссылка  | Контрольная сумма  | username  | password  |
|---------|--------------------|-----------|-----------|
| [opi3lts-debian-klipper-5.16.17-tft.img.xz](https://disk.yandex.ru/d/UV94V2JONHBnLg)  | [MD5](https://disk.yandex.ru/d/Y_Kp65xYlXajHw)  | orangepi  | orangepi  |


# Настройка Klipper
Прошивки Klipper MCU для медвежьих плат семейства Mks Robin Nano V3/Nano4/Nano6 можно скачать отсюда
https://github.com/evgs/FBG6-Klipper/tree/main/firmware  

или же скомпилировать по инструкции https://github.com/Tombraider2006/klipperFB6/blob/main/klipper.md

Примеры конфигурации printer.cfg смотреть здесь https://github.com/Tombraider2006/klipperFB6/tree/main/klipper_config (расширенный вариант)
