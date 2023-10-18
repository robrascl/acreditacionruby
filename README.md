# README

Prueba Talento Digital 
**Rodigo Bravo Saldes**
Septiembre 05 2023
Panguipulli

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby  3.0.0
rails 7.0.7.2



* System dependencies
Mi computador es : macOS Catalina ver: 10.15.7

* Configuration
el archivo database.yml  esta configurado de la siguiente forma :
entre las lineas 24 a la 32
development:

  database: jetmaintainrodrigobravo_development
  adapter: postgresql
  encoding: unicode
  username: postgres
  password: inforcap
  host: localhost
  port: 5432

Para revisar se recomienda cambiar el equipo en el cual se va revisar la prueba

  username: 
  password: 

* Database creation
  rails db:create
  rails db:migrate

* Database initialization
En el caso de modelo Engine  se inicializa la photo segun el tipo de motor 
"reacion" o "turbohélice" .  Posteriormente se puede cambiar la foto al editar el Motor.

rails db:seed

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
