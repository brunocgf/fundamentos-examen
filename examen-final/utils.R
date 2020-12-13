
# Función para cargar defunciones
cargar_defunciones <- function(path="./datos_examen/poblacion/defunciones/"){
  x <- list.files(path, full.names=TRUE, recursive = TRUE)
  def_acum <- NULL
  for (file in x){
    def <- read_csv(file)
    def_acum <- def_acum %>% bind_rows(def)
  }
  return(def_acum)
}