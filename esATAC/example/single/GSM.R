library(esATAC)

conclusion <- 
  atacPipe(
    fastqInput1 = "SRR891268_1.fastq", #mate1 file at current working directory
    fastqInput2 = "SRR891268_2.fastq",#mate1 file at current working directory
    genome = "hg19", #genome hg19/hg38/mm10/mm9
    motifPWM = getMotifPWM(motif.file = system.file("extdata", "CTCF.txt", package="esATAC"), is.PWM = FALSE)) #scan single motif CTCF
