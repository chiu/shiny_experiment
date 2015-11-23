# ui.R

shinyUI(fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(
      h1("Installation"),
      p("Shiny is available in CRAN so you can install it the usual way from your..."),
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
        "Shiny is a new package from RStudio that makes it",
        em("incredibly easy"),
        "to build interactive web apps with R."
      ),
      br(),
      p("For an introducation and live examples, visit the",
      a(href = "https://www.rstudio.com", "Shiny homepage")
      ),
      br(),
      h2("Features"),
    
      tags$ul(
        tags$li("Build useful web applications with only a few lines of code -- no JS required"),
        tags$li(HTML(paste(
          "E = mc", tags$sup(2), sep = ""
        )),
        HTML(paste(
          "H", tags$sub(2), "0", sep = ""
        )),
        HTML(
          paste("something ", tags$b("bold text "), sep = "", "so cool")
        )),
        tags$li("Shiny applications are automatically live in the way way that",  strong("spreadsheets"), "are live. Outputs change instantly as users modify...")
      )
      ## <ol>
      ##   <li>First list item</li>
      ##   <li>Second list item</li>
      ##   <li>Third list item</li>
      ## </ol>
    )
  )
))