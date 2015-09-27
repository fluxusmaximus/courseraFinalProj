library(shiny)
library(manipulate)

shinyUI(pageWithSidebar(
        headerPanel("Select a range"),
        sidebarPanel(
                sliderInput("price", 
                            label = "Price",
                            min = 0, max = 199, value = c(0,199), step = 1)
        ),

        mainPanel(
                h1('Stats on Steam Games'),
                p('This is a very basic app that looks at data from Steam games as drawn from SteamSpy.'),
                p('The histogram is updated based on the price range selected on the left. The median in the range is shown as well. I would like to expand on this app but maybe not at 4am in the morning like uhm now.'),
                p('To get started, select a range by sliding the sliders to your left. A histogram should generate!' ),
                h1('Results'),
                p('The total number of games in the selected range is'),
                verbatimTextOutput("total"), 
                plotOutput('newPlot')
        )
))