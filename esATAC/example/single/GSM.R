library(esATAC)

conclusion <- 
  atacPipe(
    fastqInput1 = "SRR891268_1.fastq",
    fastqInput2 = "SRR891268_2.fastq",
    genome = "hg19",
    motifPWM = getMotifPWM(motif.file = system.file("extdata", "CTCF.txt", package="esATAC"), is.PWM = FALSE))
