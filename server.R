library(shiny)

data(mtcars)
fit=lm(mpg ~ wt , mtcars)
intercept=summary(fit)$coef[1,1]
wt_coefficient=summary(fit)$coef[2,1]

shinyServer(
function(input, output) {

    
    x = reactive({as.numeric(input$input_weight)})
    
    output$in1 <- renderText({x()  })
    output$mpg <- renderText({intercept + wt_coefficient * x() })
    
}
)
