
#############
#### UI
#############

ui <- fluidPage(
  
  # App title ----
  titlePanel("IRIS Prediction"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input: Numeric entry for number of obs to view ----
      numericInput(inputId = "sl",
                   label = "Sepal Length:",
                   value = 1.5),
      
      # Input: Numeric entry for number of obs to view ----
      numericInput(inputId = "sw",
                   label = "Sepal Width:",
                   value = 1.5),
      
      # Input: Numeric entry for number of obs to view ----
      numericInput(inputId = "pl",
                   label = "Petal Length:",
                   value = 1.5),
      
      # Input: Numeric entry for number of obs to view ----
      numericInput(inputId = "pw",
                   label = "Petal Width:",
                   value = 1.5),
      
      width = 3
      
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      
      # Output: HTML table with requested number of observations ----
      tableOutput("view"),
      plotOutput("plot1"),
      plotOutput("plot_sl"),
      plotOutput("plot_sw"),
      plotOutput("plot_pl"),
      plotOutput("plot_pw")
      
      
      
    )
  )
)

