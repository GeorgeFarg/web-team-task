Here is the instructions to run the app on a local environment

0- you have to install node in your pc to run the app. you can download it from the offecial link: https://nodejs.org/en/download

1- cd [app folder path]

2- npm install 

3- import the database attached to file

5- change the connection link to connect the app to the MySQL database
change the link to this: "mysql://[username]:[password]@[address]:[port]/employees_management"

6- npm run dev


note:- 
if you need to insert some dummy data to the app
run this command: node generate_dummy_data\dummydata.js
