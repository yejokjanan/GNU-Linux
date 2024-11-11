# Resumen
En mi experiencia considero los siguientes comandos como los más básicos e importantes a la hora de ser un administrador de servidores GNU/Linux. Así que comencemos por saber dónde nos encontramos dentro del sistema, como movernos de un lugar a otro, como crear y/o eliminar ficheros y directorios.

Prácticamente todos los comandos tienen sus manuales o ayudas dentro del propio sistema, en algunos casos están traducidos en diferentes idiomas, pero mayormente esta información de ayuda la encontramos en inglés. Los usos más comunes son `man (comando)` o `comando --help`. Indudablemente en internet podemos encontrar mucha ayuda, pero si quieres consultar una fuente confiable te recomiendo ir a https://manpages.debian.org/.

Ahora, también es importante conocer la diferencia que hay entre un usuario administrador (con privilegios) y un usuario normal (sin privilegios). ¿Cómo los podemos diferenciar a simple vista? Sencillo, un usuario administrador siempre se indica con `#` (numeral), y los demás usuarios con `$` (moneda). Un usuaro administrador puede hacer todo y de todo sin ninguna restricción, a diferencia de un usuario normal que tiene limitaciones para ejecutar comandos, moverse dentro del sistema, etc.

> **Uso de mayúsculas y minúsculas.**
> 
> GNU/Linux es un sistema sensible a mayúsculas y minúsculas, esto quiere decir que debemos escribir tal cual el nombre del fichero o directorio. En el caso de Windows no hay diferencia, y podríamos escribir todo en mayúsculas o minúsculas y no habría ningún error, pero en GNU/Linux sí.

Normalmente vamos a ver el [cli](https://es.wikipedia.org/wiki/Interfaz_de_l%C3%ADnea_de_comandos) de la siguiente manera:

```bash
usuario@host:~$
```
```bash
root@host:~#
```
Esto nos indica el `usuario`, el `@` (arroba) se usa como separador, seguido del `nombre del host`; luego doble punto `:` como separador, la `~` (virgulilla) indica el *directorio raíz del usuario*; y el signo `$` (moneda) nos indica los *privilegios del usuario.*

En la mayoría, los comandos permiten introducir otras opciones para aprovechar al máximo sus capacidades, estas opciones se ejecutan con el signo `-` (menos), y en algunos casos `--` (doble menos).

# Comandos básicos
**Imprimir información del sistema:** [uname](https://manpages.debian.org/bookworm/manpages-es/uname.1.es.html)
```bash
usuario@host:~$ uname
Linux
```
Este comando por si solo únicamente nos muestra el nombre del [kernel (núcleo)](https://www.kernel.org/), así que para ver toda la información referente al *kernel, nombre del host, versión del kernel, tipo de maquina y procesador (32 o 64 bits) y el sistema operativo;* vamos a usar la opción corta `-a`, o también podríamos usar la opción larga `--all`.
```bash
usuario@host:~$ uname -a
Linux host 5.15.0-125-generic #135-Ubuntu SMP Mon Jan 1 00:00:00 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux
```

**Imprimir nombre del usuario:** [whoami](https://manpages.debian.org/bookworm/manpages-es/whoami.1.es.html)
```bash
usuario@host:~$ whoami
usuario
```

**Imprimir nombre del host:** [hostname](https://manpages.debian.org/bookworm/manpages-es/hostname.1.es.html)
```bash
usuario@host:~$ hostname
host
```
Los comandos `whoami` y `hostname` son muy útiles para determinar el equipo y el usuario al que estamos accediendo; mientras uno aprende en una maquina local y con todo definido, se nos hace muy fácil, pero en ocasiones debemos administrar servidores en remoto, que pueden estar en otro lugar del mundo y con una configuración que no nos muestre mas que el signo `#` o `$`.

**Imprimir nombre del directorio actual:** [pwd](https://manpages.debian.org/bookworm/manpages-es/pwd.1.es.html)
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
Por ejemplo si escribes `ls -l`, el comando va a mostrar en forma de lista los ficheors y directorios, si escribes `ls -a`, va a mostrar los ficheros y directorios ocultos.

> **Nota:** *En GNU/Linux, los ficheros y directorios se ocultan escribiendo un punto `.` al inicio. Por ejemplo `.document.txt` es un fichero oculto, `.images` es un directorio oculto.*

Si escribres `ls -F`, va a mostrar un `/` (slash) al final de los directorios, esto nos ayuda a identificar los directorios y no confundirlos con un fichero. También podemos combinar estas opciones `-l -a -F`, y muchas más si queremos ahorrar tiempo al escribir todo por separado, quedando así `ls -laF`; mostrando en pantalla todo el contenido en forma de lista.

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
Básicamente este comando lo que nos permite hacer es movernos libremente por los directorios. Si queremos ir a la raíz del sistema solo es escribir `cd /`; si queremos ir a un directorio que está dentro del directorio actual podemos escribir `cd directorio`. Si es un directorio oculto recuerda escribir el punto `cd .directorio`. Si queremos ir a un directorio que está dentro de otros directorios debemos escribir la ruta completa `cd /directorio1/directorio2/directorio3`. Si queremos volver atrás escribimos `cd ..` (doble punto); también podemos volver atrás entre varios directorios escribiendo `cd ../../..`. Ahora, sin importar la ubicación dónde nos encontremos, podemos ir rápidamente al directorio ráiz del usuario escribiendo `cd`.

> **Uso de la tecla Tab**
> 
> *Si el nombre de un fichero o directorio es largo, o no lo recordamos bien, podemos usar la tecla Tab y el sistema nos ayuda a completarlo. Ejemplo: `cd docu` y presionando Tab  nos completa el nombre `cd documents`.También puede que hayan varios ficheros o directorios que comiencen de igual forma, en este caso presionamos dos veces Tab y nos muestra los ficheros o directorios que coinciden con la búsqueda.*

**Crear fichero vacio:** [touch](https://manpages.debian.org/bookworm/manpages-es/touch.1.es.html)
```bash
usuario@host:~$ touch document.txt
```
Aunque el propósito original de este comando es actualizar la fecha de acceso y modificación del fichero a la hora actual, se usa para crear ficheros vacíos si no existen. ¿Con qué propósito hacer esto? Supongamos que necesitamos crear varios ficheros para luego comenzar a editarlos, entonces podríamos hacer lo siguiente: `touch doc1 doc2 doc3`. Ahora, al ejecutar `ls` vemos estos ficheros.

> **Formato**
> 
> En GNU/Linux, los ficheros pueden tener o no tener un formato definido (extensión) como lo son `.txt` `.php` `.html` `.css` `.js` etc... sin que esto nos ocasione un problema al momento de editarlos o visualizarlos.

**Crear directorio:** [mkdir](https://manpages.debian.org/bookworm/manpages-es/mkdir.1.es.html)
```bash
usuario@host:~$ mkdir codes
```
Básicamente el comando `mkdir` lo que hace es crear un directorio si no existe, si ya existe nos va mostrar algo similar a esto: `mkdir: no se puede crear el directorio «codes»: El archivo ya existe`. Como en el caso del comando `touch`, podemos crear varios directorios vacíos al mismo tiempo, por ejemplo: `mkdir dir1 dir2 dir3`. Ahora al ejecutar `ls` vemos estos directorios.

> Espacios en el nombre
> 
> ¿Cómo podemos crear un fichero o directorio que tenga un espacio intermedio? Una de las dos formas es crearlo entre `“”` (comillas) o con un `\` (slash invertido) al final de la palabra que queremos separar de la otra. Veamos algunos ejemplos: `touch “fichero de pruebas1”` o `touch fichero\ de\ pruebas2`. En el caso de crear un directorio hacemos lo mismo: `mkdir “directorio de pruebas1”` o `mkdir directorio\ de\ pruebas2`.
> 
> Cuando ejecutamos `ls` y un fichero o directorio tiene espacios, lo va a mostrar entre `‘’` (comillas simples). Si queremos movernos a un directorio que contiene un espacio en el nombre, hacemos el mismo procedimiento, escribiendo entre `“”` (comillas) o indicando el espacio con un `\` (slash invertido).
> 
> Es importante comprender esta diferencia, es por eso que en la mayoría de los casos, los desarrolladores prefieren usar signos como `-` `_` `.` para separar los nombres. Esto se hace con propósito de evitar errores al invocar ficheros o directorios.
