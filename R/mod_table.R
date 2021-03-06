#' table UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_table_ui <- function(id){
  ns <- NS(id)
  tagList(
    tableOutput(ns("table_1"))
  )
}
    
#' table Server Functions
#'
#' @noRd 
#' 
#' @importFrom DT
mod_table_server <- function(id, data){ # note `data` param
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    
    output$table_1 <- renderTable({
      data
    })
    
  })
}
    
## To be copied in the UI
# mod_table_ui("table_ui_1")
    
## To be copied in the server
# mod_table_server("table_ui_1")
