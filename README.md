# Actions
- [![Actions Status](https://github.com/VGrishutin/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/VGrishutin/devops-for-programmers-project-74/actions)
- [![Docker Image CI](https://github.com/VGrishutin/devops-for-programmers-project-74/actions/workflows/build-push-docker-image.yml/badge.svg)](https://github.com/VGrishutin/devops-for-programmers-project-74/actions/workflows/build-push-docker-image.yml)

# Docker image
[Docker Image](https://hub.docker.com/r/vgrishutin/devops-for-programmers-project-74/tags)

# Requirements

## Оформление
- + В файле README.md стоит бейджик Github Action
- В репозитории нет лишних (временных файлов и директорий). Все что лишнее добавлено в .gitignore
- В контейнер при сборке не попадает ничего лишнего. Все, что лишнее добавлено в dockerignore
- В Readme описаны требования для системы, инструкции для приложения, тестов. 
- Есть ссылка или имя созданного на Dockerhub образа
- Makefile содержит команды для подготовки и запуска проекта

## Сервисы
Бейджик Github Actions зеленый, то есть проверки должны проходить.
В CI подготовка и запуск тестов происходит внутри Docker

## Код
- Приложение конфигурируется через переменные окружения
- В Dockerfile нет ничего лишнего. Никакие файлы не копируются внутрь
- В docker-compose.yml сборка происходит с использованием образа для продакшена. 
- Копирование файлов внутрь образа происходит в Dockerfile.production. Нет открытых портов
- В docker-compose.override.yml используется для сборки Dockerfile

# Instructions

## Сборка проетка
docker run -it -w /root -v `pwd`/app:/root node:20.12.2 make setup
## запускаем проект
docker run -it -w /root -v `pwd`/app:/root -p 8080:8080 node:20.12.2 make dev

## run tests
docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
