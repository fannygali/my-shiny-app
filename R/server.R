library(shiny)

# Define server logic required to draw a histogram
server<-function(input, output) {

 #Load the dataset
  data <- read.csv("data/your-dataset.csv", header = TRUE)

  # Reactive expression to observe changes in input$var and input$bins
  dataHist <- reactive({
    # Select the variable
    var <- data[, input$var]
    # Calculate the histogram with the specified number of bins
    hist(var, breaks = input$bins, plot = TRUE)
  })

  # Render the histogram
  output$hist <- renderPlot({
    hist <- dataHist()
    barplot(hist$counts, main = input$var, xlab = "Value", ylab = "Frequency")
  })
}