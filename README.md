### Hexlet tests and linter status:
[![Actions Status](https://github.com/VGrishutin/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/VGrishutin/devops-for-programmers-project-74/actions)

### Docker image publish status:
[![Docker Image CI](https://github.com/VGrishutin/devops-for-programmers-project-74/actions/workflows/build-push-docker-image.yml/badge.svg)](https://github.com/VGrishutin/devops-for-programmers-project-74/actions/workflows/build-push-docker-image.yml)

#### some data
# устанавливаем зависимости
docker run -it -w /root -v `pwd`/app:/root node:20.12.2 make setup
# запускаем проект
docker run -it -w /root -v `pwd`/app:/root -p 8080:8080 node:20.12.2 make dev

# run tests 
docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

