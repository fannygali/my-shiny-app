# Cargar la librería shiny
library(shiny)

# Definir la ubicación de los scripts de la interfaz de usuario y del servidor
dataset <- read.csv("data/your-dataset.csv")

ui <- "R/ui.R"
server <- "R/server.R"

# Ejecutar la aplicación
shinyApp(ui = ui, server = server)
