# manual
#
Исправление проблем с кириллицей в консоли 
http://help.ubuntu.ru/wiki/%D1%80%D1%83%D1%81%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F\_%D0%BA%D0%BE%D0%BD%D1%81%D0%BE%D0%BB%D0%B8
#
Конфиг vim
/usr/share/vim/vimrc
#
Конфиг git
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
#
Nmap Сканирование всех ip адресов в локальной сети
nmap -v -sP 192.168.1.3/24
#
Wine установка доп. компонентов в бутылку
WINEARCH=win32 WINEPREFIX=~/win32 winetricks -q msxml3 dotnet40 corefonts
#
Копирование всех файло кроме одного
ls folder1 | grep -v file1 | xargs cp folder2 (folder1 - Исходная, folder2 - конечная, file1 - игнорируемый файл)
#
Замена подстроки в vim
:{пределы}s/{что заменяем}/{на что заменяем}/{опции}
:%s/float(dmg)/dmg
#
Распаковка архива tar.gz
tar -xvf /path/to/archive.tar.gz
#
Просмотр прав на файл
ls -l file
