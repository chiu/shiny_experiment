#server.R

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
})
