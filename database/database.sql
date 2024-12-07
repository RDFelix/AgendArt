create database agenda;

create table usuarios(
    codigo int not null primary key auto_increment,
    nombres varchar(45) not null,
    apellidos varchar(45) not null,
    identificacion varchar(45) unique not null,
    tipo_id varhcar(15) not null,
    correo varchar(45) not null unique,
    contraseña varchar(120) not null,
    foto blob null
);

create table agenda(
    codigo int not null primary key auto_increment,
    titulo varchar(120) not null,
    mensaje varchar(500) null,
    fecha timestamp default current_timestamp,
    usuario int not null,
    foreign key (usuario) references usuarios(codigo) on delete cascade on update cascade
);

//Datos para insertar
insert into codigo, nombres, apellidos, identificacion, correo, contraseña values (
    ('admin', '123', '999999', 'admin@agenda.com', '123'),
    ('Ana', 'García', '987654321', 'anagarcia@example.com', 'contraseña456'),
    ('Carlos', 'Sánchez', '123456789', 'carlossanchez@example.com', 'contraseña123'),
    ('María', 'López', '789456123', 'marialopez@example.com', 'contraseña789');    
);