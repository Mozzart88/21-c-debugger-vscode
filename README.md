# 21-c-debugger-vscode
Configuration files for run C/C++ debugger on 21School Mac

Данный набор файлов позволяет запустить отладчик C/C++.

Для запуска отладчика на MAC'ах школы 42 надо скопировать VSCode в папку `~/Applications`.

После этого, копируем папку `.vscode` в корневую директорию проекта.
Для того что бы папка не отслеживалась GIT'ом её надо добавить в файл `.gitignore`, для этого пропишите следующую строку в файле
`.vs*`. Можно также добавить строчку `.git*`, которая уберёт сам файл `.gitignore` из индекса.

## Сборка исполняемого файла
Для запуска отладчика надо сперва собрать проект. Делается это нажатием сочитания клавишь ⇧ + ⌘ + B (Shift + Command + B) и выбором задания для сборщика:
[][select task]

Правила для сборщика прописаны в [файле tasks.json](./.vscode/tasks.json):
1. **gcc build active file** - компилирует только активный файл, т.е. тот что непосредственно виден в окне радактора.
2. **gcc build active folder** - компилирует все файлы в активной папке и её подпапках.
3. **gcc build project** - компилирует все файлы рекурсивно, т.е. от корня проекта во всех подпапка.

## Запуск отладчика
Для запуска отладчика надо нажать клавишу F5.
![][start debugging]

### Установка брейкпоинтов
Для установки брейкпоинтов, чтобы посмотреть значения переменнх в определенном месте кода надо в окне, левее номеров строк, кликнуть мышкой на той строчке, на которой Вы хотите поставить точку остановки:
![][set breapoint]

Чтобы поставить брейкпоинт, который сработает только при выполнении определённого условия - надо кликнуть правой кнопкой мыши там же где и для обычного брейкпоинта и выбрать в контекстном меню пункт `Add Conditional Breakpoint`:
![][set cond breakpoint]

### Передача параметров в программу
Отладчик читает конфигурацию из [файла launch.json](./.vscode/launch.json). Это стандартный [JSON-файл](https://ru.wikipedia.org/wiki/JSON "Wiki JSON") в котором описаны параметры конфигурации. Одним из таких параметров является `args`, который представляет из себя масcив аргументов, передаваемых программе:
![][set params]

[select task]: https://github.com/Mozzart88/readme_srcs/blob/master/21-c-debugger-vscode/src/vscode_debugger_select_task.gif
[set breakpoint]: https://github.com/Mozzart88/readme_srcs/blob/master/21-c-debugger-vscode/src/vscode_debugger_set_breakpoint.gif
[set cond breakpoint]: https://github.com/Mozzart88/readme_srcs/blob/master/21-c-debugger-vscode/src/vscode_debugger_set_cond_breakpoint.gif
[set params]: https://github.com/Mozzart88/readme_srcs/blob/master/21-c-debugger-vscode/src/vscode_debugger_set_params.gif
[start debugging]: https://github.com/Mozzart88/readme_srcs/blob/master/21-c-debugger-vscode/src/vscode_debugger_start_debugging.gif
