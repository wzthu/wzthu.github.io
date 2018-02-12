library(esATAC)
conclusion <-
   atacRepsPipe2(
       caseFastqInput1=list("./mouse/SRR4435490_1.fastq",
                            "./mouse/SRR4435491_1.fastq"),
       caseFastqInput2=list("./mouse/SRR4435490_2.fastq",
                            "./mouse/SRR4435491_2.fastq"),
       ctrlFastqInput1=list("./mouse/SRR4435505_1.fastq",
                            "./mouse/SRR4435506_1.fastq"),
       ctrlFastqInput2=list("./mouse/SRR4435505_2.fastq",
                            "./mouse/SRR4435506_2.fastq"),
       genome = "mm10",
       refdir = "~/ref",
       threads=28,
       motifPWM = getMotifPWM(motif.file = system.file("extdata", "CTCF.txt", package="esATAC"), is.PWM = FALSE))

