echo "Hello Ashis...this above is the payload recieved.h"
echo" ------- "
echo " Pulling github repo "
git pull
" ---- "
eval $(minikube docker-env)
pwd
# echo $PATH
echo "----------Building images and applying manifests----------"
docker build -t challenge_ashpect ./teams/team1
kubectl delete deployment challenge
kubectl apply -f ./teams/team1/challenge.yaml



