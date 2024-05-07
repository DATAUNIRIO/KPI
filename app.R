
# ui.R
library(shiny)
library(DT)
dat <- data.frame(
  country = c('USA', 'China'),
  flag = c('<img src="https://github.com/DATAUNIRIO/KPI/blob/master/green.gif?raw=true" height="12"></img>',
           '<img src="https://github.com/DATAUNIRIO/KPI/blob/master/redFlashing.gif?raw=true" height="12"></img>'
  )
)

ui = shinyUI(
  DT::dataTableOutput('mytable')
)

server = shinyServer(function(input, output){
  output$mytable <- DT::renderDataTable({
    DT::datatable(dat, escape = FALSE) # HERE
  })
})


shinyApp(ui=ui,server = server)


require(stats) # for rnorm
plot(0:1, 0:1, type = "n")  # setting up coord. system
points(C(1,1), col = "red")
points(0.5,0.5,col = "blue",pch=19,  cex = 5.5)

library(ggplot2)
ggplot() + geom_rect(aes(xmin=-1,ymin=-1,xmax=1,ymax=1), fill='red') + coord_polar()+theme_minimal()

