# Lista con funcionalidades previtas en el script

- ### Compatibilidad con el script
    - [ ] Listar todos los comandos necesarios para ejecutar el script
        - [X] En caso de alguna dependencia, avisar al usuario.
    - [ ] Autoinstalación de las herramientas necesarias

- ### Adaptación con Netplan (Ubuntu).
    - [ ] Validador .YAML
    - [ ] Permisos de archivos.
    - [ ] Ejecución del demonio (servicio).
    - [ ] Aplicación de cambios.


- ### Compatibilidad con */etc/network/interfaces*
    - [X] Validador del archivo.
    - [ ] Aplicar cambios.


- ### Autorreparación
    - [ ] Cambiar de modo monitor a modo managed de forma automática. 
    - [ ] Cuando detecte algún fallo, se ejecutará automáticamente las funciones correspondientes para arreglar dichos errores.
    - [ ] Conflictos de configuración (varios servicios de red distintos a la vez, varias conexiones a la misma interfaz, etc.).
    - [ ] Tarjetas de red (interfaces) caídas.


- ### Repositorios
    Debido a que algunas distribuciones pueden cambiar su lista de repositorios como en caso de Ubuntu y otros no como en Parrot, se analizarán los repositorios en busca de fallos.

    - #### Fallos por errores tipográficos:
        - [ ] Que a la hora de insertar los repositorios, se añadió/comió algún carácter por ejemplo:
        ~~db http://es.archive.ubuntu.com/ubuntu lunar universe~~ → Pone **db** en vez de **deb**.

    - [ ] Repositorios obsoletos:
        - [ ] Como en caso de Ubuntu que pasa de *archive.ubuntu.com/\** a *old-releases.ubuntu.com/\**


- ### Idiomas
   El script debe tener soporte para cada idioma.


# Lista con funcionalidades NO soportadas.

Por lo menos a corto y medio plazo:

### - Direccionamiento IPv6.
   - Considero que el protocolo IPv6 está más enfocado a conexiones públicas en vez de conexiones LAN. Siempre vi que en muchas ocasiones se desactiva este protocolo, por lo que no lo considero tan importante.



> [!NOTE]
> Desde mi punto de vista, estoy dispuesto a debatir y considerar la importancia de este protocolo.