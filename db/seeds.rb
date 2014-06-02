User.delete_all
User.create("username" => "aaronhollub", "password" => "homes", "name" => "Aaron Hollub", "account_type" => "admin", "client_name" => "Hollub Family")
User.create("username" => "matthewburke", "password" => "custom", "name" => "Matthew Burke", "account_type" => "client", "client_name" => "Burke Family")
User.create("username" => "mauraweigel", "password" => "luxury", "name" => "Maura Weigel", "account_type" => "client", "client_name" => "Weigel Family")

Project.delete_all
Project.create("project_name" => "Hollub Family New Residence", "project_address" => "10901 SW 69th Ave Road - Pinecrest, FL 33156", "summary" => "A new 15,000 square foot home for the Hollub Family in Pinecrest, Florida. This home has 5 bedrooms, 6.5 baths, a pool and tennis court. The home sits on 1.25 acres.", "client_name" => "Hollub Family")
Project.create("project_name" => "Burke Family Renovation", "project_address" => "9771 South Dixie Highway - Pinecrest, FL 33156", "summary" => "Renovation. This project will remodel the master bedroom, kitchen and family room.", "client_name" => "Burke Family")
Project.create("project_name" => "Weigel Family Vacation Home", "project_address" => "8824 SW 177th Terrace - Palmetto Bay, FL 33157 ", "summary" => "A new vacation home in Palmetto Bay, FL for the Weigel Family. This is a new construction on an existing property that will require demolition of the current home.", "client_name" => "Weigel Family")
Project.create("project_name" => "Hollub Family Sarasota Condo Renovation", "project_address" => "585 Sanctuary Drive B-204 - Longboat Key, FL 34228 ", "summary" => "This is a complete renovation of the Hollub's 3BR, 3BR beach front condo in Sarasota Florida. Work to be done includes: remodel the kitchen with new appliances and new tile and adding an island. All windows will be upgraded to withstand CAT 5 hurricane winds.", "client_name" => "Hollub Family")

Gantt.delete_all
Gantt.create("gantt_url" => "http://upload.wikimedia.org/wikipedia/en/7/73/Pert_example_gantt_chart.gif", "project_name" => "Hollub Family New Residence" )
Gantt.create("gantt_url" => "http://www.matchware.com/images/special/gantt-chart-template-640.jpg", "project_name" => "Hollub Family Sarasota Condo Renovation" )
