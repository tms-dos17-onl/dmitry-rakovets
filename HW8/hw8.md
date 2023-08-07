1. Вывести в консоль список всех пользователей системы.
```

``` 
2. Найти и вывести в консоль домашние каталоги для текущего пользователя и root.
```

``` 
3. Создать Bash скрипт get-date.sh, выводящий текущую дату.
```

``` 
4. Запустить скрипт через ./get-date.sh и bash get-date.sh. Какой вариант не работает? Сделать так, чтобы оба варианта работали.
```

``` 
5. Создать пользователей alice и bob с домашними директориями и установить /bin/bash в качестве командной оболочки по умолчанию.
```

``` 
6. Запустить интерактивную сессию от пользователя alice. Создать файл secret.txt с каким-нибудь секретом в домашней директории при помощи текстового редактора nano.
```

``` 
7. Вывести права доступа к файлу secret.txt.
```

``` 
8. Выйти из сессии от alice и открыть сессию от bob. Вывести содержимое файла /home/alice/secret.txt созданного ранее не прибегая к команде sudo. В случае, если это не работает, объяснить.
```

``` 
9. Создать файл secret.txt с каким-нибудь секретом в каталоге /tmp при помощи текстового редактора nano.
```

``` 
10. Вывести права доступа к файлу secret.txt. Поменять права таким образом, чтобы этот файл могли читать только владелец и члены группы, привязанной к файлу.
```

``` 
11. Выйти из сессии от bob и открыть сессию от alice. Вывести содержимое файла /tmp/secret.txt созданного ранее не прибегая к команде sudo. В случае, если это не работает, объяснить.
```

``` 
12. Добавить пользователя alice в группу, привязанную к файлу /tmp/secret.txt.
```

``` 
13. Вывести содержимое файла /tmp/secret.txt.
```

``` 
14. Скопировать домашнюю директорию пользователя alice в директорию /tmp/alice с помощью rsync.
```

``` 
15. Скопировать домашнюю директорию пользователя alice в директорию /tmp/alice на другую VM по SSH с помощью rsync. Как альтернатива, можно скопировать любую папку с хоста на VM по SSH.```

``` 
16. Удалить пользователей alice и bob вместе с домашними директориями.
```

``` 
17. С помощью утилиты htop определить какой процесс потребляет больше всего ресурсов в системе.
```

``` 
18. Вывести логи сервиса Firewall с помощью journalctl не прибегая к фильтрации с помощью grep.
```

```