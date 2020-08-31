# Игра "Виселица"

## Правила игры

Игра загадывает слово - существительное или нарицательное в именительном падеже единственного числа и дает 7 попыток на угадывание.

Игрок пытается отгадать слово, вводя поочередно буквы. Если буква угадана, игра отображает ее в соответстующих местах загаданного слова. Если пользователь не угадал, то буква показывается в списке ошибочных, а также прорисовывается часть картинки виселицы.

## Список слов

В исходной версии программа содержит набор из 12 слов, но этот набор можно изменять. Для загадывания слова игра использует случайный выбор из списка слов в файле `words.txt`, который расположен в папке `.\date`. В каждой строке этого файла должно быть указано только одно слово.

## Программа

Для работы программы на компьютере должен быть установлен интепретатор языка [Ruby](https://www.ruby-lang.org/). Программа работает только в терминале.

## Установка программы

Для установки необходимо воспользоваться терминалом операционной системы.
Если на компьютере установлена система контроля версий [git](https://git-scm.com/), то для установки программы нужно перейти в папку, в которую вы хотите установить игру, и ввести по очереди следующие команды:

```
$ git clone https://github.com/bondarev075/hangman_game.git
$ cd ./hangman_game
$ bundle
```

Если система git отсутствует, то можно скопировать [этот архив](https://github.com/bondarev075/hangman_game/archive/master.zip) с программой на компьютер в папку игры и разархивировать его.

## Запуск игры

Чтобы запустить игру, нужно перейти в папку игры, где расположен файл main.rb и выполнить команду:

```
$ bundle exec ruby main.rb
```
