##gives the reverse complement of a DNA or RNA sequence input as a string
reverse_comp <- function(sequence) {
        comp_string <- NULL
        ind <- strsplit(sequence, "")
        for(i in 1:length(ind)){
                ind2 <- unlist(ind[i], "")
                if(sum(is.element(ind2, "U")) >= 1 |sum(is.element(ind2, "u")) >= 1){
                        ind2 <- toupper(ind2)
                        ind2 <- gsub("T", "U", ind2)
                        fac <- factor(ind2)
                        m2 <- rev(levels(fac))
                        comp <- rev(factor(ind2, labels = m2))
                        comp_string[i] <- paste(comp, collapse = "")
                }
                else{
                        ind2 <- toupper(ind2)
                        fac <- factor(ind2)
                        m2 <- rev(levels(fac))
                        comp <- rev(factor(ind2, labels = m2))
                        comp_string[i] <- paste(comp, collapse = "")
                }
        }
        print(comp_string)
}
