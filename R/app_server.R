#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny ggplot2
#' @noRd
app_server <- function( input, output, session ) {
  # Your application server logic 
  mod_first_server(id = "id_1")
  mod_first_server(id = "id_2")
  mod_plot_server(id  = "plot_1")
}
