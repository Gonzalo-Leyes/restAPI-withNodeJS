Delilah Restó


RESTful API utilizando: 
  - express
  - nodejs
  - MySQL 
  - Javascript 
-----API para manejo de información de pedidos en un restaurante----


>>> SERVIDOR: 
  Para iniciar el servidor:
    -Instalar la dependencia "express" (npm install express);
    -Dentro del archivo "index.js" en la carpeta principal, se indica el puerto a utilizar (por default se ve en el archivo que utiliza el 3000 pero se puede cambiar).
    
>>> DEPENDENCIAS:
  En esta API se utilizan las siguientes dependencias que deberá instalar:
    - body-parser
    - sequelize
    - jsonwebtoken
    - MySQL2

| estas dependencias pueden ser consultadas en el archivo "package.json" |

>>> BASE DE DATOS:
  Una vez instalada la dependencia, en el archivo "restodelilah.sql" encontrará todo lo necesario para crear la base de datos.
  Se recomienda usar PhpMyAdmin a través de la app "XAMPP".

>>> POSTMAN:
  En el archivo "delilah_resto.postman_collection.json" se encuentran las pruebas a los endopoints con los request necesarios.  

>>> RESPONSE:
  Toda las respuestas serán un objeto json.

>>> ENDPOINTS:
  A usuarios: 
    - post/users
    - post/users/login
    - get/users
    - put/users/
    - delete/users/:id

  A productos:
    - post/products
    - get/products
    - put/products/:id
    - delete/products/:id

  A ordenes
    - post/orders
    - get/orders
    - get/orders/orders_products/:id
    - put/orders/:id
    - delete/orders/:id
   
