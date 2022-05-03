# This is the fetch data step of the Targets USGS tutorial
#Code written by Lindsay Platt, modified by Matthew Morriss 5/3/22

# Inputs: None
# Outputs: Input data downloaded from science base
fetch_data <- function(){
  
#setup file name
mendota_file <- here::here("1_fetch/out/",
                           "input_file.csv")


#save output data
sbtools::item_file_download('5d925066e4b0c4f70d0d0599', 
                            names = 'me_RMSE.csv',
                            destinations =  mendota_file,
                            overwrite_file = TRUE)

#read input data as a tibble, delcaring column type explicitly
input_data <- readr::read_csv(mendota_file, col_types = 'iccd')

return(input_data)
}