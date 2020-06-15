Algoritmos y Estructuras de Datos

Trabajo Práctico 2020

Trabajo Práctico Nro 2

Orientado al uso de las Estructuras de Control junto a Datos Simples y Datos tipo Array.

Desarrollar en diagrama de chapín y su correspondiente codificación Pascal.

Los datos necesarios para desarrollar estas opciones serán los siguientes:

Para los síntomas, las variables de trabajo serán
• cod-sint: string [3]
• desc-sint: string[30]

Para las enfermedades, las variables serán:
• cod-enf: string[3]
• desc-enf: string[30]
• síntomas: cómo máximo se podrán cargar 6 códigos.

Utilizando el mismo menú de opciones desarrollado en el TP1, como avance del mismo sistema, desarrollar:

Opción 1: Retomar esta opción y realizar los siguientes pasos
• Utilizar la misma carga de las provincias pero los datos deben quedar almacenados en arreglos; y finalizada la carga:
o Exhibir las provincias ordenadas por el código (utilizar un procedure con parámetros)
o Exhibir las provincias ordenadas por el nombre (utilizar el mismo procedure con parámetros)

Opción 2: realizar la carga de todos los síntomas posibles de ser presentados por los pacientes, considerando que no serán más de 20.

Opción 3: realizar la carga de todas las posibles enfermedades con sus respectivos síntomas. En Argentina (por el momento no se registran más de 10 enfermedades). Al momento de cargar los síntomas verificar que los mismos existan en los arreglos de síntomas. En caso de no existir solicitar el ingreso de un código correcto. Considerar que se pueden cargar entre 1 y 6 síntomas como máximo.

Finalizada la carga exhibir por cada síntoma, su código, su detalle y cuantas enfermedades lo presentan

Opción 4: se mantiene

Opción 0: salir del programa