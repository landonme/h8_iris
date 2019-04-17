

# Server.R
server <- function(input, output) {
  
  # datasetInput <- reactive({
  #   wine %>% filter(variety == input$wineOptions)
  # })
  
  # Show the first "n" observations ----
  # The output$view depends on both the databaseInput reactive
  # expression and input$obs, so it will be re-executed whenever
  # input$dataset or input$obs is changed
  output$view <- renderTable({
    gp(input$sl, input$sw, input$pl, input$pw)
  },height = 400,width = 40)
  
  output$plot1<-renderPlot({
    ggplot(data.frame(x) %>% select(Sepal.Length, Sepal.Width),
           aes(Sepal.Length, Sepal.Width)) + geom_point() + geom_point(data = gf(input$sw, input$sl) ,
                                                                       aes(x=Sepal.Length, y=Sepal.Width), colour="red", size=2)
  },height = 400,width = 600) 
  
  
  output$plot_sl<-renderPlot({
    ggplot(iris, aes(Sepal.Length)) + geom_density(aes(fill=factor(Species)), alpha=.4) + geom_vline(xintercept = input$sl) + ggtitle("Sepal Length") +  theme_classic()
  },height = 400,width = 600) 
  
  output$plot_sw<-renderPlot({
    ggplot(iris, aes(Sepal.Width)) + geom_density(aes(fill=factor(Species)), alpha=.4) + geom_vline(xintercept = input$sw) + ggtitle("Sepal Width") +  theme_classic()
  },height = 400,width = 600)   
  
  output$plot_pw<-renderPlot({
    ggplot(iris, aes(Petal.Width)) + geom_density(aes(fill=factor(Species)), alpha=.4) + geom_vline(xintercept = input$pw) + ggtitle("Petal Width") +  theme_classic()
  },height = 400,width = 600)   
  
  output$plot_pl<-renderPlot({
    ggplot(iris, aes(Petal.Length)) + geom_density(aes(fill=factor(Species)), alpha=.4) + geom_vline(xintercept = input$pl) + ggtitle("Petal Length") +  theme_classic()
  },height = 400,width = 600)   
  
}
