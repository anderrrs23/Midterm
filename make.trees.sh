#! /bin/bash

#This will translate the DNA sequence to AA before alignment
~/software/BIOL435/translate.py ADRA2ABC.fas > ADRA2ABC.aa.fas

#This will align the tranlated file
mafft ADRA2ABC.aa.fas > ADRA2ABC.aa.aln.maf.fas

#This will use reverse translate the file into the codons
~/software/BIOL435/reverseTranslateAlignment.py ADRA2ABC.aa.aln.maf.fas ADRA2ABC.fas > ADRA2ABC.codon.aln.fas

#This will make a tree with the codon alignment
raxmlHPC-PTHREADS -f a -p 12345 -x 12345 -s ADRA2ABC.codon.aln.fas -n ADRA2ABC.codon.tree -# 100 -m GTRGAMMA -T 4

#This will make a tree with the amino acid alignment
raxmlHPC-PTHREADS -f a -p 12345 -x 12345 -s ADRA2ABC.aa.aln.maf.fas -n ADRA2ABC.aa.tree -# 100 -m PROTCATWAG -T 4

#This will draw the codon tree
xvfb-run python ~/software/BIOL435/drawTree.py RAxML_bipartitions.ADRA2ABC.codon.tree ADRA2ABC.codon.tree

#This will draw the codon tree
xvfb-run python ~/software/BIOL435/drawTree.py RAxML_bipartitions.ADRA2ABC.aa.tree ADRA2ABC.aa.tree

