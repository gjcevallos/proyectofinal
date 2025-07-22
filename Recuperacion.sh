# Examen de Recuperacion

# Crear carpeta para guardar datos
mkdir -p Data

# 1. Descargar gen FOXP2 para el guepardo (Acinonyx jubatus)
esearch -db nucleotide -query "FOXP2[Gene] AND Acinonyx jubatus[Organism]" | efetch -format fasta > Data/foxp2_guepardo.fasta

# 2. Descargar gen FOXP2 para la pantera (Panthera)
esearch -db nucleotide -query "FOXP2[Gene] AND Panthera[Organism]" | efetch -format fasta > Data/foxp2_panthera.fasta

echo "Archivos descargados: foxp2_guepardo.fasta y foxp2_panthera.fasta en carpeta Data"
echo "Ahora edita los nombres en Atom y alinea las secuencias manualmente en Atom"

# Espera al alineamiento manual (fuera del script)

# 3. Una vez tengas el archivo alineado (por ejemplo, alineado.fasta), puedes correr IQ-TREE:

module load iqtree
iqtree -s alineado.fasta -m MFP -bb 1000 -nt AUTO -pre Results/foxp2_tree

# 4. Visualizar árbol (solo se imprime el nombre del archivo generado)
echo "Árbol filogenético generado: Results/foxp2_tree.treefile"
