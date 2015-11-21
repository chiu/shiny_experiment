# ui.R

shinyUI(fluidPage(
  titlePanel("cool wow title panel"),
  sidebarLayout(sidebarPanel("sidebar page panel"),
                mainPanel(
                  h1("First level title"),
                  h2("SEcond level title"),
                  h3("Third level title"),
                  h4("Fourth level title"),
                  h5("Fifth level title"),
                  h6("Sixth level title")
                ))
))