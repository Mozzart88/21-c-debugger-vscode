# 21-c-debugger-vscode
Configuration files for run C/C++ debugger on 21School Mac

Данный набор файлов позволяет запустить отладчик C/C++.

Для запуска отладчика на MAC'ах школы 42 надо скопировать VSCode в папку `~/goinfre`.

После этого, копируем папку `.vscode` в корневую папку проекта.

## Сборка исполняемого файла
Для запуска отладчика надо сперва собрать проект. Делается это нажатием сочитания клавишь ⇧ + ⌘ + B (Shift + Command + B) и выбором задания для сбощка:
[][select task]

Правила для сборщика прописаны в [файле tasks.json](./.vscode/tasks.json):
1. **gcc build active file** - компилирует только активный файл, т.е. тот что непосредственно виден в окне радактора.
2. **gcc build active folder** - компиилирует все файлы в активной папке и её подпапках.
3. **gcc build project** - компилирует все файлы рекурсивно, т.е. от корня проекта во всех подпапках .

## Запуск отладчика
Для запуска отладчика надо нажать клавишу F5.
[][start debugging]

### Установка брейкпоинтов
Для установки брейкпоинтов, чтобы посмотреть значения переменнх в определенном месте кода надо в коде, левее номеров строк, уликнуть мышкой на той строчке, на окторой Вы хотите поставить точку остановки:
[][set breapoint]

Чтобы поставть брейкпоинт, который сработает только при выполнении определенного условия - надо кликнуть прваой кнопкой мыши тамже где и для обчного брейкпоинта и выбрать в контекстном меню пункт `Add Conditional Breakpoint`:
[][set cond breakpoint]

### Передача парамтров в программу
Отладчик читает конфигурацию из [фала launch.json](./vscode/launch.json). Это стандартный (JSON-файл)[https://ru.wikipedia.org/wiki/JSON] в котором описаны параметры конфигурации. Одним из таких параметров является `args`, который представляет из себя масив аргументов, передаемых программе:
[][set params]

[select task]: https://github.com/Mozzart88/readme_srcs/blob/master/21-c-debugger-vscode/src/vscode_debugger_select_task.gif
[set breakpoint]: https://github.com/Mozzart88/readme_srcs/blob/master/21-c-debugger-vscode/src/vscode_debugger_set_breakpoint.gif
[set cond breakpoint]: https://github.com/Mozzart88/readme_srcs/blob/master/21-c-debugger-vscode/src/vscode_debugger_set_cond_breakpoint.gif
[set params]: https://github.com/Mozzart88/readme_srcs/blob/master/21-c-debugger-vscode/src/vscode_debugger_set_params.gif
[start debugging]: https://github.com/Mozzart88/readme_srcs/blob/master/21-c-debugger-vscode/src/vscode_debugger_start_debugging.gif
