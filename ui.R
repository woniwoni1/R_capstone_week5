# Load required libraries
require(leaflet)


# Create a RShiny UI
shinyUI(
  fluidPage(padding=5,
  titlePanel("Bike-sharing demand prediction app"), 
  # Create a side-bar layout
  sidebarLayout(
    # Create a main panel to show cities on a leaflet map
    mainPanel(leafletOutput("city_bike_map", width = 1000, height = 800)
      # leaflet output with id = 'city_bike_map', height = 1000
    ),
    # Create a side bar to show detailed plots for a city
    sidebarPanel(
                plotOutput("temp_line", width = 570, height = 200),
                plotOutput("bike_line", width = 570, height =  200, click = "plot_click"),
                verbatimTextOutput("bike_date_output"),
                plotOutput("humidity_pred_chart", width = 570, height =  200),
    selectInput(inputId="city_dropdown", "Cities:", c("All", "Seoul", "Suzhou", "London", "New York", "Paris") )
      # select drop down list to select city
    ))
))