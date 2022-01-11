#' plot UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList
mod_plot_ui <- function(id){
  ns <- NS(id)
  tagList(
    selectInput(
      inputId = ns("selected_col"),
      label = "selected column",
      choices = colnames(mtcars)
    ),
    plotOutput(
      outputId = ns("plot")
    )
  )
}
    
#' plot Server Functions
#'
#' @noRd 
mod_plot_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    
    output$plot <- renderPlot({
      ggplot(mtcars, 
             aes(x = .data[[input$selected_col]],
                 y = mpg)) +
        geom_point()
    })
  })
}
    
## To be copied in the UI
# mod_plot_ui("plot_ui_1")
    
## To be copied in the server
# mod_plot_server("plot_ui_1")
