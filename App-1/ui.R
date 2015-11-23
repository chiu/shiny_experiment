#ui.R

shinyUI(fluidPage(
  titlePanel("censusVis"),
  sidebarLayout(
    sidebarPanel(
      "Create demographic maps with information form the 2010 US Census.",
      br(),
      br(),
      selectInput(
        "select",
        label = "Choose a variable to display",
        choices = list(
          "Percent White" = 77,
          "Percent Black" = 2,
          "Percent Hispanic" = 3,
          "Percent Asian" = 4
        ),
        selected = 1
      ),
      sliderInput(
        "slider1",
        label = "Range of interest:",
        min = 0,
        max = 100,
        value = 100
      )
    ),
    mainPanel(h1(""))
  )
))
