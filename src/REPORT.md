# Simple Docker

## Part 1. Готовый докер.
- Взять официальный докер образ с nginx и выкачать его при помощи docker pull:
![docker pull](images/cron1.png)
- Проверить наличие докер образа через docker images:
![docker images](images/cron2.png)
- Запустить докер образ через docker run -d [image_id|repository]
![docker run -d](images/cron3.png)
- Проверить, что образ запустился через docker ps
![docker ps](images/cron4.png)
- Посмотреть информацию о контейнере через docker inspect [container_id|container_name]
![docker inspect](images/cron5.png)
![docekr inspect_2](images/cron6.png)
![docker inspect_3](images/cron7.png)
- Остановить докер образ через docker stop [container_id|container_name]
![docker stop](images/cron8.png)
- Проверить, что образ остановился через docker ps
![docker check](images/cron9.png)
- Запустить докер с замапленными портами 80 и 443 на локальную машину через команду run
![docker run with ports](images/cron10.png)
- Проверить, что в браузере по адресу localhost:80 доступна стартовая страница nginx
![docker nginx](images/cron11.png)
- Перезапустить докер контейнер через docker restart [container_id|container_name]
![docker restart](images/cron12.png)
- Проверить любым способом, что контейнер запустился:
![docker check after restaart](images/cron13.png)
## Part 2. Операции с контейнером.
- Прочитать конфигурационный файл nginx.conf внутри докер образа через команду exec
- ![docker exec](images/cron15.png)
- Создать на локальной машине файл nginx.conf. Настроить в нем по пути /status отдачу страницы ![docker ngin.conf](images/cron14.png)
- Скопировать созданный файл nginx.conf внутрь докер образа через команду docker cp
![docker cp](images/cron16.png)
- Перезапустить nginx внутри докер образа через команду exec
![docker -s reolad](images/cron17.png)
- Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx
![docker check status](images/cron18.png)
- Экспортировать контейнер в файл container.tar через команду export
![docker export](images/cron19.png)
- Остановить контейнер
![docker stop](images/cron20.png)
- Удалить образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры
![docker rmi](images/cron21.png)
- Импортировать контейнер обратно через команду import
![docker import](images/cron22.png)
- Запустить импортированный контейнер
![docker run](images/cron23.png)
## Part 3.
- Установить sudo apt-get install -y libfcgi-dev, sudo, apt-get install -y spawn-fcgi
- Скомпилировать main.c командой gcc main.c -lpthread -lfcgi -o server
- Запустить бинарник командой spawn-fcgi -p 8080 -n ./server
- Проверить, что в браузере по localhost:81 отдается написанная вами страничка
![localhost:81](images/cron24.png)
## Part 4.
- Командой sudo docker  build -f Dockerfile -t hello_world:1.0 собираем докре файл
- Запускаем контейнер командой sudo docker run --name my_container  -p 80:81 -v /home/outcast/simple_docker/src/part_4/nginx:etc/nginx -dt hello_world:1.0
Получаем по 80 порту нашу страничку))
![my containrt](images/cron25.png)
