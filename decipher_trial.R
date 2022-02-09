#David C. Green
#First time testing out DECIPHER

library(DECIPHER)

#specify path to fasta
fas <- 'NPF5.5.fasta'
#load fasta
seqs <- readDNAStringSet(fas)
#you can reorient nucleotide sequnces with OrientNucleotides()
#align sequence 
aligned <- AlignSeqs(seqs)

#aligning multiple sequnces from multiple files
fas1 <- 'NPF5.5.fasta'
fas2 <- 'NPF5.11.fasta'
seqs1 <- readDNAStringSet(c(fas1, fas2))
aligned1 <- AlignSeqs(seqs1)
