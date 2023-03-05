echo "hello"
echo "ashish"
git pull
eval $(minikube -p percy docker-env)
pwd
# echo $PATH
docker build -t challenge_ashpect ./teams/team1
kubectl delete deployment challenge
kubectl apply -f ./teams/team1/challenge.yaml



