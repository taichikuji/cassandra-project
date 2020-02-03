# Cassandra - Apache
###### El proyecto será documentado y activo mientras dure esta actividad.
## Preparación del sistema
#### Para realizar esta tarea vamos a utilizar diferentes tecnologías y programas OpenSource, tales como;
1. Cassandra
2. Visual Studio Code con los plugins correspondientes...
3. GitHub

Para utilizar los plugins de Visual Studio Code, iremos al repositorio oficial de VSCode y buscaremos los plugins necesarios;
1. [Cassandra Workbench](https://marketplace.visualstudio.com/items?itemName=kdcro101.vscode-cassandra)
> La razón por la que usaremos este plugin será para conectarse una vez tengamos la instalación Cassandra ya instalada en nuestro sistema y queramos trabajar con la base de datos.
2. [Visual Studio Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
> Necesitaremos este plugin para ejecutar un servidor que nos permita conectarnos en grupo y trabajar remotamente de manera sencilla y eficaz.
3. [Remote SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
> Este plugin servirá para conectar nuestro VSCode a una maquina virtual y trabajar sin tener que manipular esta maquina virtual localmente.
4. [gitlens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
> Este plugin nos ayudará a tener mejoras y ayudas en relación a git, el programa que utilizaremos para sincronizar nuestro proyecto conjunto a nuestro repositorio github.

Como tenemos pensado utilizar docker de momento, utilizaremos los ejemplos de docker-compose y dockerfiles oficiales de [bitnami](https://github.com/bitnami/bitnami-docker-cassandra). Estas imagenes provienen de una versión modificada de debian llamada '[minideb](https://github.com/bitnami/minideb)', mucho más ligera de lo que normalmente sería, y especialmente generada para contenedores.

Para empezar a utilizar este docker-compose tendremos que ejecutar el siguiente comando;

> docker-compose up -d

Si no montamos ficheros en monturas personalizadas por nosotros, estas son las siguientes variables que se pueden utilizar para modificar el docker-compose a nuestro gusto con la imagen Cassandra:

    CASSANDRA_TRANSPORT_PORT_NUMBER
    Inter-node cluster communication port. Default: 7000

    CASSANDRA_JMX_PORT_NUMBER
    JMX connections port. Default: 7199

    CASSANDRA_CQL_PORT_NUMBER
    Client port. Default: 9042.

    CASSANDRA_USER
    Cassandra user name. Defaults: cassandra

    CASSANDRA_PASSWORD_SEEDER
    Password seeder will change the Cassandra default credentials at initialization. In clusters, only one node should be marked as password seeder. Default: no

    CASSANDRA_PASSWORD
    Cassandra user password. Default: cassandra

    CASSANDRA_NUM_TOKENS
    Number of tokens for the node. Default: 256.

    CASSANDRA_HOST
    Hostname used to configure Cassandra. It can be either an IP or a domain. If left empty, it will be resolved to the machine IP.

    CASSANDRA_CLUSTER_NAME
    Cluster name to configure Cassandra.. Defaults: My Cluster

    CASSANDRA_SEEDS
    Hosts that will act as Cassandra seeds. No defaults.

    CASSANDRA_ENDPOINT_SNITCH
    Snitch name (which determines which data centers and racks nodes belong to). Default SimpleSnitch

    CASSANDRA_ENABLE_RPC
    Enable the thrift RPC endpoint. Default :true

    CASSANDRA_DATACENTER
    Datacenter name for the cluster. Ignored in SimpleSnitch endpoint snitch. Default: dc1.

    CASSANDRA_RACK
    Rack name for the cluster. Ignored in SimpleSnitch endpoint snitch. Default: rack1.

Los ficheros de configuración que busca la imagen están localizados en la carpeta siguiente;
> /opt/bitnami/cassandra/conf

Se pueden montar volumenes apuntando a /bitnami/cassandra/conf/ y copiar o editar las configuraciones en;
> /ruta/a/cassandra-persistence/conf 

Los ficheros se enviarán a conf/ si esta vacío.

Si queremos modificar estos cambios, tendremos que descargar el fichero base;

> wget https://raw.githubusercontent.com/apache/cassandra/trunk/conf/cassandra.yaml

y luego modificar el fichero como queramos.