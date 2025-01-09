# Actions
- [![Actions Status](https://github.com/VGrishutin/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/VGrishutin/devops-for-programmers-project-74/actions)
- [![Docker Image CI](https://github.com/VGrishutin/devops-for-programmers-project-74/actions/workflows/build-push-docker-image.yml/badge.svg)](https://github.com/VGrishutin/devops-for-programmers-project-74/actions/workflows/build-push-docker-image.yml)

# Docker image
[Docker Image](https://hub.docker.com/r/vgrishutin/devops-for-programmers-project-74/tags)

# Требования

## Оформление
- В файле README.md стоит бейджик Github Action
- В репозитории нет лишних (временных файлов и директорий). Все что лишнее добавлено в .gitignore
- В контейнер при сборке не попадает ничего лишнего. Все, что лишнее добавлено в dockerignore
- В Readme описаны требования для системы, инструкции для приложения, тестов. 
- Есть ссылка или имя созданного на Dockerhub образа
- Makefile содержит команды для подготовки и запуска проекта

## Сервисы
- Бейджик Github Actions зеленый, то есть проверки должны проходить.
- В CI подготовка и запуск тестов происходит внутри Docker

## Код
- Приложение конфигурируется через переменные окружения
- В Dockerfile нет ничего лишнего. Никакие файлы не копируются внутрь
- В docker-compose.yml сборка происходит с использованием образа для продакшена. 
- Копирование файлов внутрь образа происходит в Dockerfile.production. Нет открытых портов
- В docker-compose.override.yml используется для сборки Dockerfile

# Инструкция

## Сборка проекта
```docker-compose -f docker-compose.yml -f docker-compose.override.yml run --rm app make setup```

## Запуск проекта
```docker-compose -f docker-compose.yml -f docker-compose.override.yml up``` \
проект доступен по следующим адресам:
- https://localhost/
- http://127.0.0.1:8080/

## Запуск тестов
```docker-compose -f docker-compose.yml -f docker-compose.override.yml run --rm app make prepare-env test```

## Построить образ
```docker build -t vgrishutin/devops-for-programmers-project-74 -f Dockerfile.production .```

## Залить образ в репозиторий
```docker push vgrishutin/devops-for-programmers-project-74```