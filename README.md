This is a simple  REST API with two endpoints:

/5033/subjects → Returns a list of students and their programs.

/5033/students → Returns a list of Software Engineering subjects (Year 1-4).

_**Install & Run**_
git clone (https://github.com/MABULUKI/DEPLOYMENT-PROJECT.git)  
cd DEPLOYMENT-PROJECT  
composer install  
cp .env.example .env  
php artisan key:generate  
php artisan migrate --seed  
php artisan serve 

Access API

http://51.21.182.221:5033/students
http://51.21.182.221:5033/subjects

_**Deploy on AWS**__

Connect & Install
ssh -i C:\Users\M I C R O S P A C E\Downloads\API-PROJECT-KEY-PAIR\API-PROJECT-PAIR.pem ubuntu@51.21.182.221  
sudo apt update && sudo apt install -y apache2 php mysql-server  

Deploy API
git clone https://github.com/yourusername/cs421-assignment.git  
cd cs421-assignment  
composer install  
php artisan migrate --seed  
sudo systemctl restart apache2  

Live API:
http://51.21.182.221:5033/students
http://51.21.182.221:5033/subjects

 
 
