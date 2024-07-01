## creating our own custom image
1. creating an Dockerfile
2. docker build .
3. docker login
4. docker scout quickview
5. docker image ls
6. docker image rm image_id
7. docker build -t node-backend-image .
8. docker run -d --name node-app node-backend-image    // this will show error as ports are not mapped
9. docker ps
10. docker rm container_id
11. docker rm container_id -f
12. docker run -p 8080:8080 -d --name node-app node-backend-image 
13. docker exec -it node-app bash
14. ls
15. exit


* host machine -> container (image run) -> port mapping image port:host machine port