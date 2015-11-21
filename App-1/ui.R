# ui.R

shinyUI(fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    
    sidebarPanel(
      h1("Installation"),
      p("Shiny is available in CRAN..."),
      code("install.pack..."),
      br(),
      img(src="bigorb.png", height = 40, width = 40),
      p("shiny is a product of"),
      a(href="www.rstudio.com", "Rstudio")
    ),
    mainPanel(
      h1("Introducing Shiny"),
      p("Shiny something somethings")
    )
  )
))