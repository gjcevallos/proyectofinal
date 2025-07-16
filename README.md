# La Huella del ADN Felino :paw_prints:

**Génesis Julieth Cevallos Charco(gjcevallos@puce.edu.ec)**
15 de Julio,2025

## El guepardo (*Acinonyx jubatus*) es uno de los felinos más veloces y singulares del mundo. Este proyecto se centra en el análisis genético del guepardo, comparando algunos de sus genes con los de otros felinos cercanos como la pantera para poder ver el gen de maullido.


## Flujo de Trabajo

1. **Obtención de Datos**  
   Las secuencias genéticas de distintas especies de *Felidae* fueron seleccionadas con base en literatura previa sobre genes relacionados al maullido y vocalización. Las secuencias están en formato FASTA y se encuentran en la carpeta `Data/`.

2. **Alineamiento de Secuencias**  
   Se utilizó **MAFFT** para realizar un alineamiento múltiple de las secuencias (`genes.fasta`). El resultado se guarda como `genes_aligned.fasta` en la carpeta `Results/`.

3. **Construcción del Árbol Filogenético**  
   El alineamiento fue procesado con **FastTree**, generando un árbol filogenético en formato Newick (`genes_tree.nwk`). Esta herramienta permite construir árboles de forma rápida y eficiente.

4. **Interpretación Evolutiva**  
   El árbol resultante permite observar relaciones de parentesco entre especies como *Panthera leo*, *Panthera pardus*, *Acinonyx jubatus*, *Felis catus*, y *Lynx lynx*, confirmando hipótesis sobre divergencia evolutiva en función del uso vocal.


## Uso del Pipeline

** Los detalles de los comandos utilizados en cada paso se encuentran en las carpetas correspondientes en los archivos llamados  data/data_README.txt y  results/resultados_README.txt.


![ ](https://images.unsplash.com/photo-1569600428323-7fd18782b483?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)


## Resultados y Análisis

El árbol filogenético generado muestra que:

- Las especies del género Panthera forman un grupo cercano.

- Acinonyx jubatus (guepardo) se separa del clado de Panthera, como se espera por su adaptación evolutiva al sprint.

- Felis catus y Lynx lynx están más alejados, reflejando la divergencia filogenética a nivel de tribus.


## Requisitos para ejecutar el programa

- Python 3
- MAFFT
- IQ-TREE
- ASTRAL (Java)
- Git
- FigTree
- Acceso a datos genómicos de NCBI

## ¿Cómo usar el programa?

1. Descargar las secuencias ortólogas usando OrthoFinder.
2. Alinear con MAFFT.
3. Ejecutar IQ-TREE para crear árboles individuales.
4. Usar ASTRAL para crear el árbol especie.
5. Visualizar con FigTree.
6. Subir resultados a GitHub con `git add`, `commit`, y `push`.


![ ](https://images.unsplash.com/photo-1623059192378-46d5760ab051?q=80&w=1701&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)


## Autora

** Génesis Cevallos
** Estudiante de Biología – PUCE
** Contacto: gjcevallos@puce.edu.ec


## Referencias


- Johnson WE, et al. (2006). The late Miocene radiation of modern Felidae: a genetic assessment. Science.

- PAWSE (2024). Panthera species genome project.

- FastTree Manual: http://www.microbesonline.org/fasttree/

- MAFFT Documentation: https://mafft.cbrc.jp/alignment/software/

