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
    data <- switch(input$var,
                   "Percent White" = counties$white,
                   "Percent Black" = counties$black,
                   "Percent Hispanic" = counties$hispanic,
                   "Percent Asian" = counties$asian
    )
                   
    percent_map( var = data , "darkgreen", "% white" )
  })
})
