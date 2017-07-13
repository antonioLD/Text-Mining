
lectorCampos <- function(path, lowcase = TRUE, punctuations = TRUE, numbers = TRUE, whitespaces = TRUE, accents=TRUE,swlang = "", swlist = "", verbose = TRUE){
prueba<-read.csv(path,sep=",")  
#prueba<-read.csv("/home/anlodio@alumno.upv.es/Descargas/palabrasb.txt",sep=",")
if (lowcase) {
  prueba <- tolower(prueba)
}

if (punctuations) {
  prueba <- removePunctuation(prueba)
}
if(accents){
  prueba<- chartr("áéíóú", "aeiou", prueba)
}

if (numbers) {
  prueba <- removeNumbers(prueba)
}

if (whitespaces) {
  prueba <- stripWhitespace(prueba)
}
return (prueba)
}
j<-lectorCampos(path="/home/anlodio@alumno.upv.es/Descargas/palabrasb.txt")
