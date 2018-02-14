library(esATAC)
conclusion2 <- 
    atacPipe2(
        case=list(fastqInput1 = "./SRR4435490_1.fastq", #case mate1 file at current working directory
                  fastqInput2 = "./SRR4435490_2.fastq"), #case mate2 file at current working directory
        control=list(fastqInput1 = "./SRR4435505_1.fastq", #control mate1 file at current working directory
                     fastqInput2 = "./SRR4435505_2.fastq"), #control mate2 file at current working directory
        genome = "mm10", #hg19/hg38/mm9/mm10
        refdir = "~/ref",
        motifPWM = getMotifPWM(motif.file = system.file("extdata", "CTCF.txt", package="esATAC"), is.PWM = FALSE)) #scan single motif CTCF

