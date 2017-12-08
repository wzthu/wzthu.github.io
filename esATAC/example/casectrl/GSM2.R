library(esATAC)
conclusion2 <- 
    atacPipe2(
        case=list(fastqInput1 = "SRR4435490_1.fastq",
                  fastqInput2 = "SRR4435490_2.fastq"), 
        control=list(fastqInput1 = "SRR4435505_1.fastq",
                     fastqInput2 = "SRR4435505_2.fastq"),
        genome = "mm10",
        motifPWM = getMotifPWM(motif.file = system.file("extdata", "CTCF.txt", package="esATAC"), is.PWM = FALSE))
