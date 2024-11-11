#!/bin/bash

USER="usuario"
PASSWORD="contraseña"
DATABASE="base-de-datos"

FINAL_OUTPUT=/ruta-destino/`date +%Y%m%d`_base-de-datos.sql
mysqldump --user=$USER --password=$PASSWORD $DATABASE > $FINAL_OUTPUT
