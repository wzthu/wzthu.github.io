library(esATAC)

conclusion <-
   atacPipe2(
       # MODIFY: Change these paths to your own case files!
       # e.g. fastqInput1 = "your/own/data/path.fastq"
       case=list(fastqInput1 = system.file(package="esATAC", "extdata", "chr20_1.1.fq.gz"),
                fastqInput2 = system.file(package="esATAC", "extdata", "chr20_2.1.fq.gz")),
       # MODIFY: Change these paths to your own control files!
       # e.g. fastqInput1 = "your/own/data/path.fastq"
       control=list(fastqInput1 = system.file(package="esATAC", "extdata", "chr20_1.2.fq.bz2"),
                    fastqInput2 = system.file(package="esATAC", "extdata", "chr20_2.2.fq.bz2")),
       # MODIFY: Set the genome for your data
       genome = "hg19",
       refdir = "~/ref",
       motifPWM = getMotifPWM(motif.file = system.file("extdata", "CTCF.txt", package="esATAC"), is.PWM = FALSE))
