A quick atom grammar for fasta files. Provides color-coding of nucleotides. Works on dna or rna fasta sequences, but not protein or fastq sequences.

Notes:
It only color-codes the first 100 nucleotides of a line. This is due to a
limitation in atom. You can use the grammar-token-limit package by postcasio to override it, but you probably won't like how badly it lags with long sequence.
