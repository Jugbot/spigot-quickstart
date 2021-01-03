set -e 
set -o pipefail
cd plugin
mvn clean package
cd ..
cp ./plugin/target/*.jar ./server/plugins
source ./server/start.sh