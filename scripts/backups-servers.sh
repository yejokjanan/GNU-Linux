#!/bin/bash

rsync --delete -avhzrP -e "ssh -p #puerto" usuario@host:/ruta-origen/ /ruta-destino/
