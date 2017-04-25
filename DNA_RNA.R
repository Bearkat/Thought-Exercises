DNA_RNA <- function(sequence){
        RNA <- NULL
        for(i in 1:length(sequence)){
                RNA[i] <- gsub("T", "U", sequence)
        }
        RNA
}