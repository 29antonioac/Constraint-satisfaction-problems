# Asignación de tiempo a tareas (Scheduling)

Dados:
* Un conjunto de tareas i
* La relación de precedencias entre ellas
* La duración de cada tarea

Determinar:
* El tiempo de inicio de cada tarea

| Tarea        | Earliest start time | Lastest start time  | PT Duración
| :-------------: |:-------------:| :-----:| :-----: |
| A      | 0 | 10 | 2  |
| B      | 0     |   15 | 3 |
| C | 5 | 25 | 4  |
| D      | 0 | 20 | 1  |
| E      | 10     |   25 | 5 |
| F | 0 | 5 | 3

## Variables

[A,B,C,D,E,F,G]

## Dominio

Dom(x) = [0..25]

## Restricciones

Recursos unitarios: Una tarea <-> un recurso

### Precedencia de tareas

A -> B -> C
F -> E -> C
D -> C

## Ejemplo de restricciones

A -> B => Astart + Adur <= Bstart

# Parte 2

Recursos compartidos.
La restricción para tareas que compartan recursos sería:
Bstart + Bdur <= Estart or Estart + Edur <= Bstart
La disyunción en fd es con `#\/`
Los ejercicios 8 y 9 son así.


# Parte 3

Queremos minimizar el tiempo total de ejecución
Makespan = Tiempo total de ejecución

La idea es añadir una tarea más, que sea la que se ejecute al final, detras de TODAS LAS DEMÁS QUE TENGAN SUCESORA, B,C,D en nuestro caso) y tenemos que minimizar el inicio de esta tarea ficticia.

Cstart + Cdur <= Lstart

Podemos poner early como 0 y duracion como 0. Lo malo es el last: Tenemos que asegurarnos que no se solape con las demás.
