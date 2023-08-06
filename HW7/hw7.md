1. Вывести список всех удаленных репозиториев для локального.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git remote -v
origin	https://github.com/tms-dos17-onl/dmitry-rakovets.git (fetch)
origin	https://github.com/tms-dos17-onl/dmitry-rakovets.git (push)
```
2. Вывести список всех веток.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git branch -a
* main
  remotes/origin/HEAD -> origin/main
  remotes/origin/main
```
3. Вывести последние 3 коммитa с помощью git log.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git log -3
commit 741f5e1a55d85758b789dc8736177f129ad942ee (HEAD -> main, origin/main, origin/HEAD)
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Thu Jul 27 18:45:25 2023 +0300

    complete hw5 (exercise 1-3)

commit 7ede0d1f5d1f7a8432916ceb4e01a9395d70c9ab
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Thu Jul 27 18:42:28 2023 +0300

    complete hw5

commit 47399d220561b237bfb48e67b4114e020c63a9d8
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Thu Jul 27 18:41:21 2023 +0300

    complete hw5
```
4. Создать пустой файл README.md и сделать коммит.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ touch README.md
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git add README.md
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git commit -m "Create file README.md"
[main 2a34ef8] Create file README.md
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.md
```
5. Добавить фразу "Hello, DevOps" в README.md файл и сделать коммит.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git commit -am 'Hello DevOps'
[main 19da12f] Hello DevOps
 1 file changed, 1 insertion(+)
```
6. Сделать реверт последнего коммита. Вывести последние 3 коммитa с помощью git log.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git revert HEAD
[main 5ba3c4d] Revert "Hello DevOps""
 1 file changed, 1 insertion(+)

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git log -3
commit 5ba3c4d449b0c4f3f49758e56f8ef4e175a94ff7 (HEAD -> main)
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Sun Aug 6 21:26:46 2023 +0300

    Revert "Hello DevOps""
    
    This reverts commit 606772a80845e319c5bfcd16ed8163f85d621e56.

commit 606772a80845e319c5bfcd16ed8163f85d621e56
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Sun Aug 6 21:26:09 2023 +0300

    Revert "Hello DevOps"
    
    This reverts commit 19da12ff87c6200adbedf26781d72ac4dea9ec5a.

commit 19da12ff87c6200adbedf26781d72ac4dea9ec5a
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Sun Aug 6 21:22:49 2023 +0300

    Hello DevOps
```
7. Удалить последние 3 коммита с помощью git reset.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git reset --hard HEAD~3
Указатель HEAD сейчас на коммите 2a34ef8 Create file README.md
```
8. Вернуть коммит, где добавляется пустой файл README.md. Для этого найти ID коммита в git reflog, а затем сделать cherry-pick.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git reflog
2a34ef8 (HEAD -> main) HEAD@{0}: reset: moving to HEAD~3
5ba3c4d HEAD@{1}: revert: Revert "Hello DevOps""
606772a HEAD@{2}: revert: Revert "Hello DevOps"
19da12f HEAD@{3}: commit: Hello DevOps
2a34ef8 (HEAD -> main) HEAD@{4}: commit: Create file README.md

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git cherry-pick 2a34ef8
```
9. Удалить последний коммит с помощью git reset.
```

```
10. Переключиться на ветку main или master. Если ветка называется master, то переименовать её в main.
```

```
11. Скопировать файл https://github.com/tms-dos17-onl/_sandbox/blob/main/.github/workflows/validate-shell.yaml, положить его по такому же относительному пути в репозиторий. Создать коммит и запушить его в удаленный репозиторий.
```

```
12. Создать из ветки main ветку develop. Переключиться на неё и создать README.md в корне репозитория. Написать в этом файле какие инструменты DevOps вам знакомы и с какими вы бы хотели познакомиться больше всего (2-3 пункта).
```

``` 

> warning Для выполнения задания использовать Markdown, а именно заголовок и списки

13. Создать из ветки main ветку support и создать там файл LICENSE в корне репозитория с содержимым https://www.apache.org/licenses/LICENSE-2.0.txt. Создать коммит. Вывести последние 3 коммитa.
14. Переключиться обратно на ветку main и создать там файл LICENSE в корне репозитория с содержимым https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt. Создать коммит. Вывести последние 3 коммитa.
15. Сделать merge ветки support в ветку main и решить конфликты путем выбора содержимого только одной лицензии.
16. Переключиться на ветку develop и сделать rebase относительно ветки main.
17. Вывести историю последних 10 коммитов в виде графа с помощью команды git log -10 --oneline --graph.
18. Запушить ветку develop. В истории коммитов должен быть мерж support -> main.
19. Зайти в свой репозиторий на GitHub и создать Pull Request из ветки develop в ветку main.