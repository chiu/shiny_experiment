#ui.R

shinyUI(fluidPage(
  titlePanel("Basic widgets"),
  
  fluidRow(
    
    column(2,
           h3("Buttons are cool"),
           actionButton("wow_cool", label = "Actionyes"),
           br(),
           br(), 
           submitButton("Submfdsfit")),
    
    column(2,
           h3("Single checkbox"),
           checkboxInput("checkbox", label = "Choice A", value = TRUE)),
    
    column(2, 
           checkboxGroupInput("checkGroup", 
                              label = h3("Checkbox group wow"), 
                              choices = list("Choice 1 hmmm" = 1, 
                                             "Choice 2" = 4, "Choice 3" = 3),
                              selected = 1)),
    
    column(2, 
           dateInput("date", 
                     label = h3("Date input wow"), 
                     value = "2014-01-08"))   
  ),
  
  fluidRow(
    
    column(3,
           dateRangeInput("dates", label = h3("Date range testing cool"))),
    
    column(3,
           fileInput("file", label = h3("File input so cool"))),
    
    column(3, 
           h3("Help text"),
           helpText("Note: help text isn't a true widget,", 
                    "but it provides an easy way to add texhmmmmt to",
                    "accompany other widgets.")),
    
    column(3, 
           numericInput("num", 
                        label = h3("Numeric input"), 
                        value = 1)),
            helpText("Numeric inputs are cool")
  ),
  
  fluidRow(
    
    column(3,
           radioButtons("radio", label = h3("Radio buttons are cool"),
                        choices = list("Choice alpha" = 1, "Choicefdsfds 2" = 2,
                                       "Choice 3" = 3),selected = 1)),
    
    column(3,
           selectInput("select", label = h3("Select box"), 
                       choices = list("Choice wowee" = 77, "Choice 2" = 2,
                                      "Choice 3" = 3), selected = 2)),
    
    column(3, 
           sliderInput("slider1", label = h3("Sliders"),
                       min = 0, max = 200, value = 60),
           sliderInput("slider2", "",
                       min = 0, max = 100, value = c(25, 75))
    ),
    
    column(3, 
           textInput("text", label = h3("Text input"), 
                     value = "Enter text..yes."))   
  )
  
))