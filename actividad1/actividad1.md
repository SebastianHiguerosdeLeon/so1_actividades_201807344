# Actividad 1

## Tipos de Kernel

### Monolitico

Es un tipo de kernel en el cual todo el sistema operativo funciona en el espacio del kernel en modo supervisor. Este kernel se diferencia de otros tipos de kernel en que solo define una interfaz virtual de alto nivel sobre el hardware de la computadora, para hacer esto hacia una serie de llamadas al sistema con lo que logra implementar todos los servicios del sistema. El sistema operativo linux utiliza un kernel monolitico.

### Microkernel

Este tipo de kernel utiliza un conjunto de llamadas al sistema para poder implementar los servicios minimos del sistema. El microkernel es mas estable y seguro debido a que posee menos codigo ademas la funcion principal del microkernel es la de evitar el colapso del sistema al momento de que ocurra un fallo. El microkernel se diferencia de otros tipos de kernel en que el microkernel implementa los servicios de usuario en espacios de direcciones diferentes al servicio del kernel.

### Hibrido

El kernel Hibrido es una combinacion entre el kernel monolitico y el microkernel. El desarrollo de un kernel hibrido usualmente comienza como el desarrollo de un kernel monolitico para despues mover algunos de los servicios afuera del kernel. una ventaja del kernel hibrido es que tiene una mayor flexibilidad en el diseño del sistema. El kernel hibrido se diferencia del monolitico y el microkernel en que en su espacio de kernel incluye un codigo que permite que se ejecute mas rapido.

## User vs Kernel mode

El codigo que es ejecutado por el sistema puede utilizarse en dos modos, modo kernel y modo usuario. Cuando el codigo se ejecuta en modo kernel este puede acceder a todo el hardware de la computadora sin ninguna restriccion. Cuando el codigo se ejecuta en modo usuario este tiene acceso limitado a la interfaz de llamadas al sistema. Cuando ocurre un error en el modo usuario el daño es limitado y el kernel puede intervenir y reparar el daño causado. Cuando ocurre un error en modo kernel al no tener ninguna restriccion este puede causar que se caiga todo el sistema.

## Interruptions vs Traps

Una interrupcion es una señal que le indica al CPU que debe de parar el proceso que esta ejecutando y darle prioridad a alguna funcion del proceso que genero la interrupcion. Trap es un tipo de interrupcion que se genera cuando ocurrio un error o cuando el usuario hace una peticion especifica.
