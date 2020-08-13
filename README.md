# AppathonProject
My repo about the Appathon Project organised by the NTUA Team of Internet and Application Class, 2020

Επεξήγηση ιδέας του Project.

Θα κατασκευαστεί ένα web application που θα αφορά την covid πτέρυγα ενός νοσοκομείου και θα μπορεί ο διαχειριστής αυτής της εφαρμογής, να βλέπει τα στοιχεία για τους ασθενείς του νοσοκομείου. Συγκεκριμένα μέσω ενός Interface θα παρουσιάζονται με ευκολία στον χρήστη τα στοιχεία των ασθενών, η κατάσταση τους, τα αποτελέσματα των φαρμάκων κλπ.

Δεδομένου πως αυτή η ιδέα ασχολείται με ιατρικά δεδομένα, μια τέτοια βάση δεν υπάρχει για να την καλέσουμε απο web-server αλλά αντιθέτως θα χρειαστεί να φτιαχτεί μια απο την αρχή σε localhost επίπεδο. Τα δεδομένα θα καλούνται μετά από το Java Spring Back-End μας το οποίο θα τα διαχειρίζεται. Η σύνδεση θα γίνει με τη χρήση Hibernate. Έπειτα το front-end μας θα γίνει με ReactJS, όπου θα παρουσιάζονται τα δεδομένα μας με φιλικό τρόπο προς τον χρήστη.


Setup Instructions

Clone the Git Repository

It is important that you have the latest editions of MySQL, Java (with spring boot dependencies), Node.js (+React scripts).

Run the SQL Database. Import the database.sql file into your localhost database. The schema name must be eHospital.

Check the application.properties file to change username and password for the database if necessary (Currently set at: root, root). There are extra inserts in the SQL Library folder (change the Ids if needed).

Go to the 'complete' Directory in the java backend and enter this command in the IDE you are using: gradlew bootRun. It will build and run the Java Spring backend.

On the CMD of your PC go to the Directory of my-app in the Frontend Folder and type 'npm start'. If there are modules missing install them with 'npm install missingthing'.

Open localhost:3000 and check the Application!
