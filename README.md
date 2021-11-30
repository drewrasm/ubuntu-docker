### THIS IS FOR RUNNING CPP ASSIGNMENTS WITH CMAKE IN DOCKER SO YOU DO NOT NEED A VM
- RUN docker-compose build
- RUN docker-compose up -d
- RUN docker-compose run cmake
	- This allows you to enter the environment and start running cmake and your assignments

#### insert your assignments in the cpp directory and start workin' 




For now there is an unfortunate piece of the installation that I cannot figure out. To get around it, you must do the following: 

RUN
sudo ./cmake-3.20.5-linux-x86_64.sh

the cd into your cpp file
then cd into your project
RUN
mkdir build
RUN
cd build
RUN
cmake ../

then you can start building
