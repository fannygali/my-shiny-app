library(shiny)

# Define UI for application
ui<-shinyUI(fluidPage(

   # Application title
   titlePanel("Histogram Viewer"),

   # Sidebar with controls to select a variable and specify the number of bins
   sidebarLayout(
      sidebarPanel(
         selectInput("var", "Variable:",
                     choices = names(dataset)),
         sliderInput("bins", "Number of bins:",
                     min = 1, max = 50, value = 30)
      ),

      # Show a plot of the histogram
      mainPanel(
         plotOutput("hist")
      )
   )
))