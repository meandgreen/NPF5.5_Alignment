#David C. Green
#NPF5 alignment 
#02_08_22

library(DECIPHER)

#set file names
fas3 <- 'NPF5.3.fasta'
fas4 <- 'NPF5.4.fasta'
fas5 <- 'NPF5.5.fasta'
fas6 <- 'NPF5.6.fasta'
fas7 <- 'NPF5.7.fasta'
fas8 <- 'NPF5.8.fasta'
fas9 <- 'NPF5.9.fasta'
fas10 <- 'NPF5.10.fasta'
fas11 <- 'NPF5.11.fasta'

#set sequnces
seq <- readDNAStringSet(c(fas3, fas4, fas5, fas6, fas7, fas8, fas9, fas10, fas11))

#align senescence
aligned <- AlignSeqs(seq)

#view alignment
BrowseSeqs(aligned, highlight=0)
