echo " ------- Pulling github repo ------- "
git pull
eval $(minikube docker-env)
#pwd
# echo $PATH
echo "----------Building images----------"
docker build -t challenge_ashpect ./teams/team1
echo "----------Applying manifests---------"
kubectl delete deployment challenge
kubectl apply -f ./teams/team1/challenge.yaml
echo "----------Deployment successfully created--------"



