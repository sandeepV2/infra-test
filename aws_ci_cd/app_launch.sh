docker run -d -e MYSQL_ROOT_PASSWORD=abcd1234 --name empdb -p 3306:3306 --net awsecs -v /Users/sandeepbelagavi/aws_ci_cd/mysql-store/:/var/lib/mysql  mysql:latest 

docker run --name my-mysql -p 3306:3306 -v /your/data/directory:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=your_password mysql:latest
