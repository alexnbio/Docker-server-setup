-This is a basic structure and configuration of Docker, Nginx, PHP, MySql and Ubuntu to create a local server environment
-There are some paths that needs to be adjusted in Docker folder start.bat file, they are hard coded there for a reference
-There may need to be done some adjustments to Nginx server to point to the right 'web site' or 'web application'
-The application will live in Projects folder

To start the Docker server:
1) Adjust the paths in the start.bat file from Docker folder
2) Adjust the Nginx server settings for the right 'web application'
3) In a terminal, go to Docker folder, then run ./start.bat file
4) If there may be some issue in the process with the MySql, then first you should install a MySql container, then run the ./start.bat file

Disclaimer:
This is just a personal repository to store my experiments, not meant to teach or explain in details what it does.