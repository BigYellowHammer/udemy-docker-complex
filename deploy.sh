docker build -t bigyellowhammer/docker-complex-client:latest -t bigyellowhammer/docker-complex-client:${{ env.SHA }} -f ./client/Dockerfile ./client
docker build -t bityellowhammer/docker-complex-server:latest -t bityellowhammer/docker-complex-server:${{ env.SHA }} -f ./server/Dockerfile ./server
docker build -t bigyellowhammer/docker-complex-worker:latest -t bigyellowhammer/docker-complex-worker:${{ env.SHA }} -f ./worker/Dockerfile ./worker
docker push bigyellowhammer/docker-complex-client:latest
docker push bigyellowhammer/docker-complex-client:${{ env.SHA }}
docker push bigyellowhammer/docker-complex-server:latest
docker push bigyellowhammer/docker-complex-server:${{ env.SHA }}
docker push bigyellowhammer/docker-complex-worker:latest
docker push bigyellowhammer/docker-complex-worker:${{ env.SHA }}