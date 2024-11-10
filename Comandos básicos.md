# Resumen
En mi experiencia considero los siguientes comandos como los más básicos e importantes a la hora de ser un administrador de servidores GNU/Linux. Comencemos por saber dónde nos encontramos dentro del sistema, como movernos de un lugar a otro, como crear y/o eliminar ficheros y directorios.

También es importante saber, que prácticamente todos los comandos tienen sus manuales o ayudas dentro del propio sistema, en algunos casos están traducidos en diferentes idiomas, pero mayormente esta información de ayuda la encontramos en inglés. Los usos más comunes son **man (comando)** o **comando --help**. Indudablemente en internet podemos encontrar mucha ayuda, pero si quieres consultar una fuente confiable te recomiendo ir a https://manpages.debian.org/.

Ahora, también es importante conocer la diferencia que hay entre un usuario administrador (con privilegios) y un usuario normal (sin privilegios). ¿Cómo los podemos diferenciar a simple vista? Sencillo, un usuario administrador siempre se indica con **#** (numeral), y los demás usuarios con **$** (moneda). Un usuaro administrador puede hacer todo y de todo sin ninguna restricción, a diferencia de un usuario normal que tiene limitaciones para ejecutar comandos, moverse dentro del sistema, etc.

Normalmente vamos a ver el [cli](https://es.wikipedia.org/wiki/Interfaz_de_l%C3%ADnea_de_comandos) de la siguiente manera:

```bash
usuario@host:~$
```
```bash
root@host:~#
```
Esto nos indica el *usuario*, el **@** (arroba) se usa como separador, seguido del *nombre del host*; luego doble punto **:** como separador, la **~** (virgulilla) indica el *directorio raíz del usuario;* y el signo **$** (moneda) nos indica los *privilegios del usuario.*

En la mayoría, los comandos permiten introducir otras opciones para aprovechar al máximo sus capacidades, estas opciones se ejecutan con el signo - (menos), y en algunos casos -- (doble menos).

# Comandos básicos
**Imprimir información del sistema:** [uname](https://manpages.debian.org/bookworm/manpages-es/uname.1.es.html)
```bash
usuario@host:~$ uname
Linux
```
Este comando por si solo únicamente nos muestra el nombre del kernel (núcleo), así que para ver toda la información referente al *kernel, nombre del host, versión del kernel, tipo de maquina y procesador (32 o 64 bits) y el sistema operativo;* vamos a usar la opción corta **-a**, o también podríamos usar la opción larga **--all**.
```bash
usuario@host:~$ uname -a
Linux host 5.15.0-125-generic #135-Ubuntu SMP Mon Jan 1 00:00:00 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux
```

**Imprimir nombre de usuario:** [whoami](https://manpages.debian.org/bookworm/manpages-es/whoami.1.es.html)
```bash
usuario@host:~$ whoami
usuario
```

**Imprimir el nombre del host:** [hostname](https://manpages.debian.org/bookworm/manpages-es/hostname.1.es.html)
```bash
usuario@host:~$ hostname
host
```

**Imprimir nombre del directorio actual de trabajo:** [pwd](https://manpages.debian.org/bookworm/manpages-es/pwd.1.es.html)
```bash
usuario@host:~$ pwd
/home/usuario
```
Este comando es muy sencillo, basicamente nos muestra el directorio donde nos encontramos. En algunos servidores, dependiendo también de la personalización del sistema, al iniciar sesión no se nos indica ninguna ubicación, es por eso que debemos recurrir a este comando para saber que podemos hacer.

**Listar contenido del directorio:** [ls](https://manpages.debian.org/bookworm/manpages-es/ls.1.es.html)
```bash
usuario@host:~$ ls
documents files images music video
```
Por ejemplo si escribes **ls -l**, el comando va a mostrar en forma de lista los ficheors y directorios, si escribes **ls -a**, va a mostrar los ficheros y directorios ocultos.

**Nota:** *En GNU/Linux, los ficheros y directorios se ocultan escribiendo un punto **.** al inicio. Por ejemplo **.document.txt** es un fichero oculto, **.images** es un directorio oculto.*

Si escribres **ls -F**, va a mostrar un **/** (slash) al final de los directorios, esto nos ayuda a identificar los directorios y no confundirlos con un fichero. También podemos combinar estas opciones **-l -a -F**, y muchas más si queremos ahorrar tiempo al escribir todo por separado, quedando así **ls -laF**; mostrando en pantalla todo el contenido en forma de lista.

**Listar el contenido de un directorio en formato similar a un árbol:** [tree](https://manpages.debian.org/bookworm/tree/tree.1.en.html)
```bash
usuario@host:~$ tree
.
├── documents
├── files
├── images
├── music
└── video

5 directories, 0 files
```

**Cambiar de directorio:** [cd](https://manpages.debian.org/bookworm/tcl8.6-doc/cd.3tcl.en.html)
```bash
usuario@host:~$ cd documents
usuario@host:~/documents$
```

**Crear fichero vacio:** [touch](https://manpages.debian.org/bookworm/manpages-es/touch.1.es.html)
```bash
usuario@host:~$ touch document.txt
```

**Crear directorio:** [mkdir](https://manpages.debian.org/bookworm/manpages-es/mkdir.1.es.html)
```bash
usuario@host:~$ mkdir codes
```
