# Laboratorio 1 - Mi stack en Docker Compose

Aplicación NestJS con base de datos MySQL 9.4 containerizada usando Docker Compose para desarrollo.

## Configuración del Proyecto

### 1. Crear archivo de variables de entorno

Crea un archivo `.env` en la raíz del proyecto con la siguiente estructura:

```env
# Variables de entorno para la base de datos
DB_HOST=mysql
DB_PORT=3306
DB_USERNAME=nestjs_user
DB_PASSWORD=nestjs_password
DB_NAME=nestjs_db

# Variables de entorno para MySQL
MYSQL_ROOT_PASSWORD=root_password
```

### 2. Instalación de dependencias

```bash
$ npm install
```

## Ejecución con Docker Compose

### Levantar la aplicación completa

```bash
# Construir y ejecutar todos los servicios
$ docker-compose up --build

# Ejecutar en segundo plano
$ docker-compose up -d --build
```

## Acceso a la aplicación

- **Aplicación NestJS**: http://localhost:4000
- **Base de datos MySQL**: localhost:3306

## Estructura de la base de datos

La aplicación crea automáticamente la tabla `usuarios` con la siguiente estructura:

```sql
CREATE TABLE usuarios (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NULL,
    edad INT NULL,
    created_at DATE NULL,
    updated_at DATE NULL,
    PRIMARY KEY (id)
);
```
