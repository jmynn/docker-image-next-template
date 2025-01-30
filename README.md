Необходимо добавить для получения файлов в желаемую директорию:  
```
volumes:
  - ./src/styles:/output/styles/
  - ./src/components/ui/Container:/output/components/Container/
  - ./src/components/ui/Wrapper:/output/components/Wrapper/
  - ./src/components/views/Main:/output/components/Main/
  - ./src/app:/output/components/Page/
  - ./src/app:/output/components/Layout/
```
Версия создающая только nullstyle.css и globals.css - https://hub.docker.com/repository/docker/jjmynn/css-template/general
