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
