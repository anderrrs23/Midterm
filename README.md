# Midterm Exam

## This bash file, make.trees.py, will run (with the input of the desired file names) and will produce two phylogenetics trees: one with the amino acid alignment,
## and the other with the codon alginment. 

##The files used for this particular bash script are explained below:

# ADRA2ABC.fas:
	-This file contains the raw DNA sequences of the targeted species. The DNA sequences consist of the protein coding (exon only) genes for 
	 ADRA2A, ADRA2B, and ADRA2C as well as DRD2 in various species. 

#ADRA2ABC.aa.fas
	-This file is the translated DNA sequence file (above) to the amino acid file. This is done by using a pre-written Python script titled "translate.py".

#ADR2ABC.aa.aln.maf.fas
	-This file is the aligned ADRA2ABC.aa.fas file done using Mafft

#ADRA2ABC.codon.aln.fas
	-This is the file created from the aligned ADRA2ABC.aa file using a pre-written Python script that reverse translates the aa into codons
	("reverseTranslateAlignment.py")

#ADRA2ABC.codon.tree
	-This is the output name for the codon alignment tree

#ADRA2ABC.aa.tree
	-This is the output name for the aa alignment tree. It was produced by using the raxml

#drawTree.py.copy
	-This is a pre-written code to create the trees (listed below). It was written in Python.

#ADRA2ABC.aa.tree.png
	-This is the phylogenetic tree for the amino acid sequence (ADRA2ABC.aa.aln.maf.fas).

#ADRA2ABC.codon.tree.png
	-This is the phylogenetic tree for the codon sequence (ADRA2ABC.codon.aln.fas).

#translate.py
	-This was used to translate the DNA into amino acid sequence

#reverseTranslateAlignment.py
	-This was used to transcribe the amino acid sequence into codons. 

#make.tree.sh
	-This is the bash script that will execute the following:
	1. Translate the raw DNA data (inputed) into an amino acid sequence using a prewritten Python code "translate.py"
	2. Align the translated DNA to amino acid file
	3. Will execute a prewritten Python script "reverseTranslateAlignment.py" to transcribe the amino acid sequence into a codon sequence
	4. Create two trees: one from the aligned amino acid sequencec and the other from the codon sequence as png files
