# Define the key and value
namespace="default"
OxKey="Summer@99"

# Get the name of the Redis pod in the Minikube cluster
redis_pod=$(minikube kubectl -- get pods -n $namespace -l app=my-redis-app -o jsonpath='{.items[0].metadata.name}')

# Execute the Redis CLI command to set the key-value pair
minikube kubectl -- exec -it $redis_pod -n $namespace -- redis-cli SET OxKey $OxKey

