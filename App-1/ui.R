#ui.R

shinyUI(fluidPage(
  titlePanel("censusVis"),
  sidebarLayout(
  sidebarPanel(
  selectInput(
      "select",
      label = h3("Select box"),
      choices = list(
        "Choice wowee" = 77,
        "Choice 2" = 2,
        "Choice 3" = 3
      ),
      selected = 2
    ),
                      
                      
      sliderInput(
        "slider1",
        label = h3("Sliders"),
        min = 0,
        max = 200,
        value = 60
      ),
      sliderInput(
        "slider2",
        "",
        min = 0,
        max = 100,
        value = c(25, 75)
      )
  
      ),
  mainPanel(
    h1("")
  )
  
    )
  
)

)
        