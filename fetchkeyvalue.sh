# Below commands will fetch the Oxkey and display back
namespace="default"

# Get the name of the Redis pod in the Minikube cluster
redis_pod=$(minikube kubectl -- get pods -n $namespace -l app=my-redis-app -o jsonpath='{.items[0].metadata.name}')

minikube kubectl -- exec -it $redis_pod -n $namespace -- redis-cli GET OxKey
