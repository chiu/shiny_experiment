#server.R

shinyServer(function(input, output) {
  output$text1 <- renderText({
    "you have selected this"
  })
})