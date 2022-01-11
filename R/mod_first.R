#' first UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_first_ui <- function(id){
  ns <- NS(id)
  tagList( # i.e. a collection of HTML tags
    actionButton(
      inputId = ns("start_calculation"),
      label = "calculate"
    )
  )
}
    
#' first Server Functions
#'
#' @noRd 
mod_first_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_first_ui("first_ui_1")
    
## To be copied in the server
# mod_first_server("first_ui_1")
