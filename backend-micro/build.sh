cd service-discovery/
sudo mvn package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd User-Service/
sudo mvn package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd book-service/
sudo mvn package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd mail-service/
sudo mvn package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd borrow-service/
sudo mvn package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd comment-service/
sudo mvn package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd logger-service/
sudo mvn package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd violation-service/
sudo mvn package -Dmaven.test.skip=true -U -e -X -B
cd ..