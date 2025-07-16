#!/bin/bash

# Crear carpeta Results si no existe
mkdir -p Results

# Combinar las secuencias
cat Data/*.fasta > Results/combined.fasta

# Alineamiento con MAFFT
mafft --auto Results/combined.fasta > Results/alignment.fasta

# "Construyendo árbol con FastTree..."
FastTree -nt ../Results/genes_aligned.fasta > ../Results/genes_tree.nwk

# "¡Listo! Árbol guardado en Results/genes_tree.nwk"

