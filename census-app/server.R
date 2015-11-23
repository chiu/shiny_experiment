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
    data <- switch(
      input$var,
      "Percent White" = counties$white,
      "Percent Black" = counties$black,
      "Percent Hispanic" = counties$hispanic,
      "Percent Asian" = counties$asian
    )
    
    color <- switch(
      input$var,
      "Percent White" = "darkgreen",
      "Percent Black" = "black",
      "Percent Hispanic" = "orange",
      "Percent Asian" = "darkviolet"
    )
    
    legend <- switch(
      input$var,
      "Percent White" = "% White",
      "Percent Black" = "% Black",
      "Percent Hispanic" = "% Hispanic",
      "Percent Asian" = "% Asian"
    )
    
    percent_map(
      var = data ,
      color = color,
      legend.title = legend ,
      input$range[1],
      input$range[2]
    )
  })
})
