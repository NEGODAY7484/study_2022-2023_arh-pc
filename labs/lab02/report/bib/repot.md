---
## Front matter
title: "Лабораторная работа №2"
subtitle: "Архитектура вычислительных систем"
author: "Атанесов Александр"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures

fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы
изучение идеологии системы контроля версий git и
их применение.
Приобретение практических навыков по работе с системой git

# Задание

Создать отчет по выполнению Лабораторной работы в соответствующем каталоге рабочего пространства (labs/lab03/report) 


# Выполнение лабораторной работы

1)  **Настройка Github:**

Для выполнения работы используем сайт <https://github.com/> и создаём
учётную запись, введя личные данные (имя , фамилию ,адрес электронной
почты).

![используем сайт](image1.png){width="6.520833333333333in"
height="6.304166666666666in"}

2)  **Базовая настройка github:**

Сначала зададим **git** (совокупность настроек программы, задаваемая
пользователем, а также процесс изменения этих настроек в соответствии с
нуждами пользователя).

Открываем терминал и вводим следующие команды, указав своё имя и email:

![указываем имя и email](image2.jpeg){width="5.063194444444444in"
height="1.0625in"}

**git config** --- это функция, которая позволяет настраивать значения
**github** на глобальном и локальном уровнях проекта. При выполнении
команды **git config** происходит изменение текстового файла. Задаём к
этой команде, команду **\--** **global** для того чтобы **Github**
использовал наши данные и в будущем

3)  Введём параметр **utf-8**(чтобы русские символы были читаемы,к ним
    нужно приписать параметр **quotepath** в секции \[core\], установив
    его в **false**):

4)  Зададим начальную ветку **master**:

5)  Параметр **autocrlf(параметр изменения текста)** :

6)  Параметр **safecrlf** (проверит, можно ли будет откатить изменения и
    предупредит в случае неудачной операции. ):

![параметр](image3.jpeg){width="5.0875in"
height="0.4215277777777778in"}

7)  Создание **SSH** ключа:

Для последующей идентификации пользователя на сервере репозиториев
сгенерируем пару ключей (приватный и открытый): с помощью команды

**ssh-keygen -C \"Имя Фамилия \<work\@mail\>\"**

![ssh](image8.jpeg){width="6.522916666666666in"
height="3.3243055555555556in"}

8)  Введём сгенерированный открытый ключ под своей учётной записью,

зайдя на сайт: [**http://github.org/**](http://github.org/) и перейдём в
меню **Setting**. Псоле этого выберем в боковом меню вкладку **SSH and
GPG keys** и нажмём кнопку **New SSH key**.Коппируем из локальной
консоли ключ в буфер обмена коммандой: **cat \~/.ssh/id_rsa.pub \| xclip
-sel clip** , вставим ключ в появившееся поле и укажем имя **Title**.

![ввод ключа](image9.png){width="6.598611111111111in"
height="3.5284722222222222in"}

9)  **Создание рабочего пространства и репозитория курса на основе
    шаблона** В терминале создадим каталог для предмета «Архитектура
    компьютера»:

10) **Создание репозитория курса на основе шаблона**

![Создание репозитория курса](image10.jpeg){width="6.520833333333333in"
height="0.5597222222222222in"}

Перейдём на станицу репозитория с шаблоном курса

**[https://github.com/yamadharma/course-directory-student-template.](https://github.com/yamadharma/course-directory-student-template)
Далее**

выберем **Use this template.**

-   открывшемся окне задаём имя репозитория **study_2022--2023_arh-pc**
    и создаём репозиторий кнопкой **Create repository from template**.

![создание репозиторя](image11.png){width="6.480555555555555in"
height="4.05625in"}

**11)** Клонирую созданный репозиторий:

![Клонирую созданный репозиторий](image12.jpeg){width="3.9138888888888888in"
height="2.3645833333333335in"}

**13)**И вставляю в терминал:

![И вставляю в терминал](image13.png){width="6.502083333333333in"
height="3.1180555555555554in"}

13) Клонирование файлов **recursive:**

![Клонирование файлов **recursive:**](image14.jpeg){width="6.479861111111111in"
height="3.0194444444444444in"}

14) Удалим лишние и создадим необходимые каталоги:

![Удалим лишние и создадим необходимые каталоги](image15.jpeg height="0.41597222222222224in"}

**15)** Отправляем файлы на сервер **github**:

![Отправляем файлы на сервер github](image17.jpeg){width="6.488888888888889in"
height="0.41597222222222224in"}

![](image18.png){width="6.5152777777777775in"
height="2.5631944444444446in"}

**[Самостоятельная работа. Ход работы:]{.ul}**

1)  Создаю отчет по выполнению лабораторной работы в соответствующем
    каталоге рабочего пространства, пытаюсь через команду git status
    чтобы посмотреть состояние ветки и ввожу команду git add . , но
    из-за превышения дисковой квоты не удаётся выполнить закрепление
    файла на гитхаб через терминал.

2)  Прикрепляю отчёт по первой лабораторной работе в lab1 через
    веб-сайт. Тоже самое с отчётом по второй работе:

3)  Файл удачно сохранился, поэтому тоже самое проделываем со второым
    отчётом по лабораторной работе. Ссылка:
    https://github.com/Roman11tz/study_2022-2023_arh-pc/tree/master/labs/lab01/report

**Вывод:** в ходе работы мы изучили идеологии системы контроля версий
git и их применение. Приобрели практические навыки по работе с системой
git: создание учётной записи, SSH ключа, рабочего пространства и
репозитория курса на основе шаблона и настройка каталога.

![](image19.jpeg){width="6.591666666666667in"
height="2.4916666666666667in"}



::: {#refs}
:::
