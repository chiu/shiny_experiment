# ui.R

shinyUI(fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(
      h1("Installation"),
      p("Shiny is available in CRAN..."),
      code('install.packages("shiny")'),
      br(),
      br(),
      br(),
      br(),
      img(
        src = "bigorb.png",
        height = 70,
        width = 70
      ),
      "shiny is a product of",
      a(href = "https://www.rstudio.com", "Rstudio", style = "color:green")
    ),
    mainPanel(
      h1("Introducing Shiny"),
      p(
        "Shiny something somethings makes it",
        em("incredibly easy"),
        "to build interactive web apps with r."
      ),
      
      
      
      br(),
      h2("Features"),
      p("some cool stuff"),
      tags$ul(
        tags$li("First list item"),
        tags$li(HTML(paste(
          "E = mc", tags$sup(2), sep = ""
        )),
        HTML(paste(
          "H", tags$sub(2), "0", sep = ""
        )),
        HTML(
          paste("something ", tags$b("bold text "), sep = "", "so cool")
        )),
        tags$li("Third list item")
      )
      ## <ol>
      ##   <li>First list item</li>
      ##   <li>Second list item</li>
      ##   <li>Third list item</li>
      ## </ol>
    )
  )
))