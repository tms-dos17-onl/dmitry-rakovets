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
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git reset --hard HEAD~
Указатель HEAD сейчас на коммите 238289e Create file README.md
```
10. Переключиться на ветку main или master. Если ветка называется master, то переименовать её в main.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git checkout main
Уже на «main»
Эта ветка соответствует «origin/main».
```
11. Скопировать файл https://github.com/tms-dos17-onl/_sandbox/blob/main/.github/workflows/validate-shell.yaml, положить его по такому же относительному пути в репозиторий. Создать коммит и запушить его в удаленный репозиторий.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git add validate-shell.yaml
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git commit -m 'add file validate-shell.yaml'
[main 18fc11a] add file validate-shell.yaml
 1 file changed, 24 insertions(+)
 create mode 100644 validate-shell.yaml
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git push
```
12. Создать из ветки main ветку develop. Переключиться на неё и создать README.md в корне репозитория. Написать в этом файле какие инструменты DevOps вам знакомы и с какими вы бы хотели познакомиться больше всего (2-3 пункта).
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git checkout -b develop
Переключились на новую ветку «develop»
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git commit -am 'My goals'
[develop 12f4cf9] My goals
 2 files changed, 44 insertions(+), 7 deletions(-)
``` 
13. Создать из ветки main ветку support и создать там файл LICENSE в корне репозитория с содержимым https://www.apache.org/licenses/LICENSE-2.0.txt. Создать коммит. Вывести последние 3 коммитa.
```
mitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git checkout -b support main
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ curl .exe https://www.apache.org/licenses/LICENSE-2.0.txt > LICENSE
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git add ./LICENSE
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git commit -m 'Add LICENSE'
[support ebd6448] Add LICENSE
 1 file changed, 202 insertions(+)
 create mode 100644 LICENSE

mitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git log -3
commit ebd6448d79b15a585d5e172a43228cf2a43228c6 (HEAD -> support)
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Sun Aug 6 22:58:52 2023 +0300

    Add LICENSE

commit 18fc11a92a073db972517f3f00b1d4ecfc0fdf41 (origin/main, origin/HEAD, main)
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Sun Aug 6 22:20:42 2023 +0300

    add file validate-shell.yaml

commit c98fd1f48a676d880345aec382dd21953dca96ca
Merge: 238289e 547c398
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Sun Aug 6 21:55:38 2023 +0300

    Merge branch 'main' of https://github.com/tms-dos17-onl/dmitry-rakovets

``` 
14. Переключиться обратно на ветку main и создать там файл LICENSE в корне репозитория с содержимым https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt. Создать коммит. Вывести последние 3 коммитa.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git checkout main
M	HW7/hw7.md
Переключились на ветку «main»
Эта ветка соответствует «origin/main».

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ curl .exe https://raw.githubusercontent.com/git/git-scm.com/main/MIT-LICENSE.txt > LICENSE
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0curl: (6) Could not resolve host: .exe
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1072  100  1072    0     0   2981      0 --:--:-- --:--:-- --:--:--  2986

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git add ./LICENSE

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git commit -m 'Add LICENSE in main'
[main f3b72cf] Add LICENSE in main
 1 file changed, 20 insertions(+)
 create mode 100644 LICENSE

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git log -3
commit f3b72cfb16bc4743254a7826454f66c99ab911e0 (HEAD -> main)
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Sun Aug 6 23:09:25 2023 +0300

    Add LICENSE in main

commit 18fc11a92a073db972517f3f00b1d4ecfc0fdf41 (origin/main, origin/HEAD)
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Sun Aug 6 22:20:42 2023 +0300

    add file validate-shell.yaml

commit c98fd1f48a676d880345aec382dd21953dca96ca
Merge: 238289e 547c398
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Sun Aug 6 21:55:38 2023 +0300

    Merge branch 'main' of https://github.com/tms-dos17-onl/dmitry-rakovets
``` 
15. Сделать merge ветки support в ветку main и решить конфликты путем выбора содержимого только одной лицензии.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git checkout main
M	HW7/hw7.md
Уже на «main»
Ваша ветка опережает «origin/main» на 1 коммит.
  (используйте «git push», чтобы опубликовать ваши локальные коммиты)

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git merge support
Автослияние LICENSE
КОНФЛИКТ (добавление/добавление): Конфликт слияния в LICENSE
Сбой автоматического слияния; исправьте конфликты, затем зафиксируйте результат.

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git add -u LICENSE

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git merge support

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git commit -m 'Edit LICENSE'
[main 4d56095] Edit LICENSE

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git merge support
Уже актуально.
``` 
16. Переключиться на ветку develop и сделать rebase относительно ветки main.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git checkout develop
Уже на «develop»
Эта ветка соответствует «origin/develop».
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git rebase  main
Текущая ветка develop уже в актуальном состоянии.
``` 
17. Вывести историю последних 10 коммитов в виде графа с помощью команды git log -10 --oneline --graph.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git log -10 --oneline --graph
* bebcdcb (HEAD -> develop, origin/develop, main) My goals
* 4d5c838 (origin/main, origin/HEAD) push exer 1-16
*   4d56095 Edit LICENSE
|\  
| * ebd6448 (origin/support, support) Add LICENSE
* | f3b72cf Add LICENSE in main
|/  
* 18fc11a add file validate-shell.yaml
*   c98fd1f Merge branch 'main' of https://github.com/tms-dos17-onl/dmitry-rakovets
|\  
| * 547c398 Update Homework.md
| * cd4ec26 Update Homework.md
* | 238289e Create file README.md
``` 
18. Запушить ветку develop. В истории коммитов должен быть мерж support -> main.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git checkout develop
M	HW7/hw7.md
Уже на «develop»
Эта ветка соответствует «origin/develop».

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git push origin develop

dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ git log -2
commit 313a2704bccb5f970caba9807c0a068e612fbcf0 (HEAD -> develop, origin/develop)
Author: Dmitry Rakovets <rakovets.dmitry@gmail.com>
Date:   Sun Aug 6 23:42:30 2023 +0300

    push ex 1-18
``` 
19. Зайти в свой репозиторий на GitHub и создать Pull Request из ветки develop в ветку main.