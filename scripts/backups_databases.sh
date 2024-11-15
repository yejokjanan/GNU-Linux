#!/bin/bash
#Repita este proceso dentro de este script si tiene diferentes bases de datos.
#Agregue este script a crontab -e

USER="usuario"
PASSWORD="contraseña"
DATABASE="base-de-datos"
FINAL_OUTPUT=/ruta-destino/`date +%Y%m%d`_base-de-datos.sql
mysqldump --user=$USER --password=$PASSWORD $DATABASE > $FINAL_OUTPUT
