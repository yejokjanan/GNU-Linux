#!/bin/bash
# Para hacer más fácil la copia automática ejecute:
# ssh-keygen
# ssh-copy-id usuario@host
# Agregue este script a crontab -e

rsync --delete -avhzrP -e "ssh -p #puerto" usuario@host:/ruta-origen/ /ruta-destino/
