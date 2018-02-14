library(esATAC)
conclusion <-
   atacRepsPipe2(
       # MODIFY: Change these paths to your own case files!
       # e.g. fastqInput1 = "your/own/data/path.fastq"
       caseFastqInput1=list("./SRR4435490_1.fastq",
                            "./SRR4435491_1.fastq"),
       # MODIFY: Change these paths to your own control files!
       # e.g. fastqInput1 = "your/own/data/path.fastq"
       caseFastqInput2=list("./SRR4435490_2.fastq",
                            "./SRR4435491_2.fastq"),
       # MODIFY: Change these paths to your own case files!
       # e.g. fastqInput1 = "your/own/data/path.fastq"
       ctrlFastqInput1=list("./SRR4435505_1.fastq",
                            "./SRR4435506_1.fastq"),
       # MODIFY: Change these paths to your own control files!
       # e.g. fastqInput1 = "your/own/data/path.fastq"
       ctrlFastqInput2=list("./SRR4435505_2.fastq",
                            "./SRR4435506_2.fastq"),
       # MODIFY: Set the genome for your data
       genome = "mm10",
       refdir = "~/ref",
       threads=28,
       motifPWM = getMotifPWM(motif.file = system.file("extdata", "CTCF.txt", package="esATAC"), is.PWM = FALSE))

