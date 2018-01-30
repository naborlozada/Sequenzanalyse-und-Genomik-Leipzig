#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)


# ----------------------------------------------------------------------------------------------------- #
#   Rscript that produces a simple dot-plot.                                                            #
#                                                                                                       #
#   This script is a user commnand line, and only need, at least, TWO arguments: INFILE and OUTFIE.     #
#   A third file is produced by default in case the name is not provided.                               #
#                                                                                                       #
#   The script only works if the file and script are in the same directory.                             #
#                                                                                                       #
#   Run the script:                                                                                     #
#       Rscript make_plot.R  <INPUT.file>  <OUTPUT.file>  <RDATA.save_image>                            #
#                                                                                                       #
# ----------------------------------------------------------------------------------------------------- #
#install.package("ggplot2")

library("ggplot2")


# CONDITION: IF there is at least one argument, RUN; ELSE, return an error:
if (length(args)==0) {
    stop("\n---------------------------------------------------------------------------------------------------------\nUSAGE:
    Rscript make_plot.R  <INPUT.file>  <OUTPUT.file>  <RDATA.save_image>\n
    At least one argument must be supplied (input table)\n---------------------------------------------------------------------------------------------------------", call.=FALSE)
} else if (length(args)==1) {
    # default output file
    args[2] = "default_output.figure.pdf"
    args[3] = "default_output.Rsession.RData"
}




# CALL my DATA and STORE it a variable:
# -------------------------------------
MY_TABLE_w_genomic_signature_analysis <- read.table(file=args[1], sep="\t", header=TRUE)



# STEP 2: MAKE a PLOT:
# -------------------------------------
my_plot <- ggplot(MY_TABLE_w_genomic_signature_analysis, aes(x=GC,y=GC3s, colour=CLASS)) +
            geom_point(size=1.5) +
            theme(  axis.text=element_text(size=12), axis.title=element_text(size=14,face="bold")  ) +
            ylab("GC3s content / CDS") + xlab("GC content (%) / CDS")
        
            # add more fancy code... 
            # ...
            # ...

# Make a OUTFILE for the PLOT:
# -------------------------------------
pdf( file=args[2], height = 7.0, width = 10.0,useDingbats=FALSE)
    my_plot
dev.off()



# SAVE my R session:
# -------------------------------------
save.image(file=args[3])



# Simple ending message:
# -------------------------------------
cat("Plot is done, bye!!\n")



