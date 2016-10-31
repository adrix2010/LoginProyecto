drop database if exists  proyecto;
create database proyecto;
use proyecto;
create table usuarios (nombreUsuario nvarchar(40) primary key, contrasena nvarchar(40));
select * from usuarios;