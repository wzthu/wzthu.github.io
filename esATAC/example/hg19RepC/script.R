options(java.parameters = "-Xmx8000m")
library(esATAC)

conclusion <- 
  atacRepsPipe(
    fastqInput1 = list("SRR891268_1.fastq", "SRR891269_1.fastq", "SRR891270_1.fastq", "SRR891271_1.fastq"),
    fastqInput2 = list("SRR891268_2.fastq", "SRR891269_2.fastq", "SRR891270_2.fastq", "SRR891271_2.fastq"),
    genome = "hg19",
    threads = 28)
