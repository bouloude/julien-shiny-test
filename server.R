#require(rCharts)
#options(RCHART_WIDTH=800)

shinyServer(
        function(input,output){
                output$text1 <- renderText({input$text1})
                output$text2 <- renderText({input$text2})
                output$text3 <- renderText({
                  if (input$goButton ==0)  "You have not pressed the btn"
                  else if (input$goButton ==1) "pressed it once"
                  else "OK quit pressing it"
                })
                
#                 output$x1<-renderChart({
#                     r1<-rPlot(SepalLength~SepalWidth|Species,data=iris,color="Species",type="point")
#                     r1$addParams(height=300,dom='x1')
#                     return(r1)
#                 })
        }
)