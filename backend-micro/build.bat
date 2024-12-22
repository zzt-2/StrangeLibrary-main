cd .\service-discovery
call mvnw package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd .\user-service
call mvnw package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd .\book-service
call mvnw package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd .\mail-service
call mvnw package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd .\borrow-service
call mvnw package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd .\comment-service
call mvnw package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd .\logger-service
call mvnw package -Dmaven.test.skip=true -U -e -X -B
cd ..

cd .\violation-service
call mvnw package -Dmaven.test.skip=true -U -e -X -B
cd ..
