
# Función para cargar defunciones
# Por favor corregir la dirección donde se entuentran los archivos de defunciones
cargar_defunciones <- function(path="./datos_examen/poblacion/defunciones/"){
  x <- list.files(path, full.names=TRUE, recursive = TRUE)
  def_acum <- NULL
  for (file in x){
    def <- read_csv(file)
    def_acum <- def_acum %>% bind_rows(def)
  }
  return(def_acum)
}