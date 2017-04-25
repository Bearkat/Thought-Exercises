##GC content calculator. Calculates the percentage of G's and C's within a sequence.
GC_calc <- function(sequence) {
        ind <- unlist(strsplit(sequence, ""))
        GC <- ind[!ind%in%c("T", "A")]
        percent_GC <- length(GC)/length(ind)*100
        print(percent_GC)
}