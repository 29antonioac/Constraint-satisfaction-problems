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
