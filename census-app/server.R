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
    args <- switch(
      input$var,
      "Percent White" = list(counties$white, "darkgreen", "% White"),
      "Percent Black" = list(counties$black, "black", "% Black"),
      "Percent Hispanic" = list(counties$hispanic, "orange", "% Hispanic"),
      "Percent Asian" = list(counties$asian, "darkviolet", "% Asian")
    )
    args$min <- input$range[1]
    args$max <- input$range[2]
    do.call(percent_map, args)
  })
})
