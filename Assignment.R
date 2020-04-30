download.file("https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part1_files/gene_expression.tsv", destfile = "gene_expression.tsv")

# Ques 1: Read in the file, making the gene accession numbers the row names. Show a table of values for the first six genes
gene <- read.table("gene_expression.tsv")
gene <- read.table("gene_expression.tsv" , header = TRUE)
head(gene) # Show a table of values for the first six genes

# Ques 2: Make a new column which is the mean of the other columns. Show a table of values for the first six genes.

gene$means <- rowMeans(gene)
head(gene)



# Ques 3: List the 10 genes with the highest mean expression

gene_mean <- gene[order(gene$Mean), ]
head(gene_mean)

# Ques 4: Determine the number of genes with a mean <10
# Ques 5: Make a histogram plot of the mean values in png format and paste it into your report.

download.file("https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part1_files/growth_data.csv", destfile = "growth_data.csv")
y <- read.table("growth_data.csv")
head(y)
str(y)
