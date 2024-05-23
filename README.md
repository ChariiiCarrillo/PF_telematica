# PF_telematica
Proyecto Final de telematica
# Juego de Memoria

¡Bienvenido al juego de memoria! Este proyecto es un juego interactivo donde los jugadores deben emparejar cartas idénticas dentro del menor tiempo posible con solo 8 intento.

## Descripción

El juego de memoria es un juego clásico en el que se colocan un conjunto de cartas boca abajo y el jugador debe voltear dos cartas a la vez para encontrar parejas. El objetivo del juego es encontrar todas las parejas en el menor número de intentos y tiempo.

# Clona el repositorio:
   Pasos:
     1. Desde la terminal clonas el repositorio en la carpeta que desees
        comando: git clone https://github.com/ChariiiCarrillo/PF_telematica.git
        
     2. Ingresar a la carpeta donde clonaste el repositorio 
        comando: cd "nombre_carpeta"
        
     3. Para verificar que el clonaje fue exitoso
        comando: ls
        
     4. Ahora ingresas a la carpeta PF_telematica
        comando: cd PF_telematica
        
     5. Ingresas a la siguiente carpeta 
        comando: cd ProyectoFinalTelematica
        
     6. Ahi encontraras una carpeta llamada  front y un archivo llamado main.ft. En el front encontraras todo el codigo de la pagina y su archivo dockerfile 
       el archivo main es el que automatizara todo el proceso de la creacion de la maquina virtual en aws(necesitas credenciales) y la creacion de los contenedores.
       Las credenciales las tienes que tener configuradas desde aws CLI.
       
     8. Necesitas un par de claves que crearas con este nombre "llaveIac" y de tamaño 4096 en la carpeta .ssh
        comandos: cd ~/.ssh (ingresas a la carpeta)
                 ssh-keygen -b 4096 (creas el par de llaves)
                 chmod 400 llaveIac (le das permiso de solo lectura a las dos llaves)
                 chmod 400 llaveIac.pub
                 cd .. (para salir de la carpeta)
                 
     7. Ingresando a la carpeta ProyectoFinalTelematica correremos el archivo main con los siguientes 
     comandos:
         cd "carpeta donde clonaste el repositorio"/PF_telematica/ProyectoFinalTelematica
         1. terraform init
         2. terraform fmt
         3. terraform validate
         4. terraform apply
         5. terraform destroy (si deseas destruir)

    
     


