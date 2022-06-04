SISTEMA DE GESTIÓN DE ESPACIOS COMUNES
--------------------------------------

CONTENIDOS DE ESTE ARCHIVO
--------------------------

* Introducción
* Requerimientos
* Instalación
* Configuración


INTRODUCCIÓN
------------

Este proyecto consiste en la realización de
un sistema de gestión de espacios comunes elaborado
para el IES Ciudad Escolar. La aplicación consta de
varias interfaces principales, cuyo aspecto y funcionalidad
depende del rol del usuario registrado.

* Para una descripción más completa de este proyecto, visite nuestro
  repositorio: https://github.com/GerardoJossueMaria/SGEC.git


REQUERIMIENTOS
--------------

Para utilizar este proyecto en ámbito local, es necesario:

* XAMPP (https://www.apachefriends.org/es/index.html)
* Un navegador web (tales como Google Chrome, Safari, Microsoft Edge,
  Mozilla Firefox)


INSTALACIÓN
-----------

* Una vez instalada la herramienta XAMPP, debe descomprimirse
  la carpeta comprimida que se encuentra en esta memoria USB
  (Código/SGEC.ZIP), dentro de la dirección (C:/xampp/htdocs).

* Una vez descomprimida la carpeta, se deben iniciar los servicios
  de Apache y MySQL de XAMPP, siendo esto posible a través del panel
  de control de XAMPP.

* Una vez está el servidor iniciado, se debe acceder a al administrador
  de base de datos de XAMPP (phpMyAdmin) a través de un navegador web,
  para lo cual se debe copiar la ruta (localhost/phpmyadmin) dentro de la
  barra de búsqueda del navegador.

* Dentro de esta interfaz, se debe crear una nueva base de datos llamada
  "sgec1" e importar dentro de esta la base de datos que se encuentra en
  esta memoria USB (BBDD/sgec1.sql).

* Una vez realizados los anteriores pasos, se ha completado la instalación y
  se puede acceder a la aplicación copiando la ruta (localhost/sgec) dentro
  de la barra de búsqueda del navegador e iniciando sesión con el usuario
  "Maria" y contraseña "Maria123456+".
