# manual

#### Конфиг vim
`/usr/share/vim/vimrc`

#### Nmap Сканирование всех ip адресов в локальной сети
`nmap -v -sP 192.168.1.3/24`

#### Wine установка доп. компонентов в бутылку
`WINEARCH=win32 WINEPREFIX=~/win32 winetricks -q msxml3 dotnet40 corefonts`

#### Копирование всех файло кроме одного
`ls folder1 | grep -v file1 | xargs cp folder2 (folder1 - Исходная, folder2 - конечная, file1 - игнорируемый файл)`

#### Замена подстроки в vim
`:{пределы}s/{что заменяем}/{на что заменяем}/{опции}`
`:%s/float(dmg)/dmg`

#### Распаковка архива tar.gz
`tar -xvf /path/to/archive.tar.gz -C /pathToUnpack`

#### Просмотр прав на файл
`ls -l file`

#### Вывод надписи на экран(bash скрипт)
`notify-send "Your text here"`

#### Подключение по ssh с использованием графического интерфейса
`ssh -X user@host`

#### Настройка git
	git config --global user.name "John Doe
	git config --global user.email johndoe@example.com

#### Смена ip
`sudo ifconfig wlp3s0 192.168.0.32 netmask 255.255.255.0`

#### Базовая установка и настройка веб-сервера
[http://help.ubuntu.ru/wiki/web-server](http://help.ubuntu.ru/wiki/web-server)

#### Обновление flash в chrome
	sudo apt-get install pepperflashplugin-nonfree
	sudo update-pepperflashplugin-nonfree --install

#### Решение проблемы с пропаданием звука в vlc
`http://forum.ubuntu.ru/index.php?topic=209711.0`
