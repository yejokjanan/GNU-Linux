# Resumen
En mi experiencia considero los siguientes comandos como los más básicos e importantes a la hora de ser un administrador de servidores GNU/Linux. Comencemos por saber dónde nos encontramos dentro del sistema, como movernos de un lugar a otro, como crear y/o eliminar ficheros y directorios.

También es importante saber, que prácticamente todos los comandos tienen sus manuales o ayudas dentro del propio sistema, en algunos casos están traducidos en diferentes idiomas, pero mayormente esta información de ayuda la encontramos en ingles. Los usos más comunes son **man (comando)** o **comando --help**. Indudablemente en internet podemos encontrar mucha ayuda, pero si quieres consultar una fuente confiable te recomiendo ir a https://manpages.debian.org/.

Ahora, también es importante conocer la diferencia que hay entre un usuario administrador (con privilegios) y un usuario normal (sin privilegios). ¿Cómo los podemos diferenciar a simple vista? Sencillo, un usuario administrador siempre se indica con **#** (numeral), y los demás usuarios con **$** (moneda). Un usuaro administrador puede hacer todo y de todo sin ninguna restricción, a diferencia de un usuario normal que tiene limitaciones para ejecutar comandos, moverse dentro del sistema, etc.

Normalmente vamos a ver el [cli](https://es.wikipedia.org/wiki/Interfaz_de_l%C3%ADnea_de_comandos) de la siguiente manera:

```bash
usuario@host:~$
```
```bash
root@host:~#
```
Esto nos indica el *usuario*, el **@** (arroba) como separador, seguido del *nombre del host*; doble punto **:** como separación, la **~** (virgulilla) indica el *directorio raíz del usuario;* y el signo **$** (moneda) nos indica los *privilegios del usuario.*

# Comandos básicos

**Imprimir nombre del directorio actual de trabajo:** [pwd](https://manpages.debian.org/bookworm/manpages-es/pwd.1.es.html)
```bash
usuario@host:~$ pwd
/home/usuario
```

**Listar contenido del directorio:** [ls](https://manpages.debian.org/bookworm/manpages-es/ls.1.es.html)
```bash
usuario@host:~$ ls
documents images music video files
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
