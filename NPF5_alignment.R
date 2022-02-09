#David C. Green
#NPF5 alignment 
#02_08_22

#Sequences retrieved from https://medicago.toulouse.inra.fr/MtrunA17r5.0-ANR/jbrowse/current/?data=..%2Fdata%2FMtrunA17r5.0-ANR&loc=MtrunA17Chr7%3A46133801..46136188&highlight=&tracks=DNA%2Cannotation%2F1_8

library(DECIPHER)

#set file names for full sequences
fas3 <- 'NPF5.3.fasta'
fas4 <- 'NPF5.4.fasta'
fas5 <- 'NPF5.5.fasta'
fas6 <- 'NPF5.6.fasta'
fas7 <- 'NPF5.7.fasta'
fas8 <- 'NPF5.8.fasta'
fas9 <- 'NPF5.9.fasta'
fas10 <- 'NPF5.10.fasta'
fas11 <- 'NPF5.11.fasta'

#set file names for cDNA sequences
fas3C <- 'NPF5.3cDNA.fasta'
fas4C <- 'NPF5.4cDNA.fasta'
fas5C <- 'NPF5.5cDNA.fasta'
fas6C <- 'NPF5.6cDNA.fasta'
fas7C <- 'NPF5.7cDNA.fasta'
fas8C <- 'NPF5.8cDNA.fasta'
fas9C <- 'NPF5.9cDNA.fasta'
fas10C <- 'NPF5.10cDNA.fasta'
fas11C <- 'NPF5.11cDNA.fasta'

#set sequnces
seq <- readDNAStringSet(c(fas3, fas4, fas5, fas6, fas7, fas8, fas9, fas10, fas11))
seq2 <- readDNAStringSet(c(fas3C, fas4C, fas5C, fas6C, fas7C, fas8C, fas9C, fas10C, fas11C))

#align senescence
aligned <- AlignSeqs(seq)
aligned2 <- AlignSeqs(seq2)

#view alignment
BrowseSeqs(aligned, highlight = 3)
BrowseSeqs(aligned2, highlight = 1)

#write alignment to new FASTA file
writeXStringSet(aligned, file='NPF5_alignment1')
