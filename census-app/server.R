#server.R

source("helpers.R")
counties <- readRDS("data/counties.rds")
library(maps)
library(mapproj)


shinyServer(function(input, output) {
  output$text2 <- renderText({
    paste("You have selected range from",
          input$range[1],
          "to",
          input$range[2])
  })
  
  output$text1 <-
    renderText({
      paste("You have selected", input$var)
    })
  
  output$map <- renderPlot({
    #percent_map <- function(var, color, legend.title, min = 0, max = 100) {
    percent_map(counties$white, "darkgreen", "% white" )
  })
})
