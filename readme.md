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
15. cat index.js 
16. printenv
16. exit
---- voulmes ------
* volume syncronization makes realtime changes
* current_working_address = 
17. docker run -v current_working_address:/app -p 8080:8080 -d --name node-app node-backend-image 
* docker run -v $(pwd):/app -p 8080:8080 -d --name node-app node-backend-image
18. docker ps -a
19. docker logs node-app
-- sync with directory to make the deleted file availbale in folder / volume
20. docker run -v current_working_address:/app -v /app/node_modules -p 8080:8080 -d --name node-app node-backend-image 

* host machine -> container (image run) -> port mapping image port:host machine port
21. docker run -v $(pwd):/app:ro -v /app/node_modules -p 8080:8080 -d --name node-app node-backend-image 
21. docker run -v $(pwd):/app:ro -v /app/node_modules --env PORT=4000 -p 4000:8080 -d --name node-app node-backend-image
22. docker run -v $(pwd):/app:ro -v /app/node_modules --env-file ./.env -p 8080000:8080 -d --name node-app node-backend-image 
23. docker volume ls
24. docker volume rm
25. docker volume prune
26. docker rm node-app -fv
