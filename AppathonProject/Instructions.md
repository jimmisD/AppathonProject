Setup Instructions

1. Clone the Git Repository

2. It is important that you have the latest editions of MySQL, Java (with spring boot dependencies), Node.js (+React scripts).

3. Run the SQL Database. Import the database.sql file into your localhost database. The schema name must be eHospital.

4. Check the application.properties file to change username and password for the database if necessary (Currently set at: root, root).
   There are extra inserts in the SQL Library folder (change the Ids if needed).

5. Go to the 'complete' Directory in the java backend and enter this command in the IDE you are using: gradlew bootRun. It will build and run the Java Spring backend.

6. On the CMD of your PC go to the Directory of my-app in the Frontend Folder and type 'npm start'. 
   If there are modules missing install them with 'npm install missingthing'.

7. Open localhost:3000 and check the Application!
