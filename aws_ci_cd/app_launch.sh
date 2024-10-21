docker run -d -e MYSQL_ROOT_PASSWORD=abcd1234 --name empdb -p 3306:3306 --net awsecs -v /Users/sandeepbelagavi/aws_ci_cd/mysql-store/:/var/lib/mysql  mysql:latest 

 docker run -d -e DBHOST="empdb" -e DBPORT="3306" -e DBUSER="root" -e DBPWD="abcd1234" -e DATABASE="awsecs" --name addemp --net awsecs -p 80:80 addemp:latest

docker run -d -e DBHOST="empdb" -e DBPORT="3306" -e DBUSER="root" -e DBPWD="abcd1234" -e DATABASE="awsecs" --name getemp --net awsecs -p 8080:8080 getemp:latest



docker run --name my-mysql -p 3306:3306 -v /your/data/directory:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=your_password mysql:latest
