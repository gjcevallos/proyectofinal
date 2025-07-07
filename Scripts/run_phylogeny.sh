#!/bin/bash

# Crear carpeta Results si no existe
mkdir -p Results

# Combinar las secuencias
cat Data/*.fasta > Results/combined.fasta

# Alineamiento con MAFFT
mafft --auto Results/combined.fasta > Results/alignment.fasta

# Árbol filogenético con IQ-TREE
iqtree -s Results/alignment.fasta -nt AUTO -m MFP -bb 1000 -pre Results/tree

echo "¡Listo! Árbol guardado en Results/tree.treefile"

