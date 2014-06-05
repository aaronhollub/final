User.delete_all
ah = User.create("username" => "aaronhollub", "password" => "homes", "name" => "Aaron Hollub", "account_type" => "admin", "client_name" => "Administrator")
User.create("username" => "harryhollub", "password" => "hollubhomes", "name" => "Harry Hollub", "account_type" => "client", "client_name" => "Hollub Family")
User.create("username" => "matthewburke", "password" => "custom", "name" => "Matthew Burke", "account_type" => "client", "client_name" => "Burke Family")
User.create("username" => "mauraweigel", "password" => "luxury", "name" => "Maura Weigel", "account_type" => "client", "client_name" => "Weigel Family")

Project.delete_all
hollub = Project.create("project_name" => "Hollub Family New Residence", "project_address" => "10901 SW 69th Ave Road - Pinecrest, FL 33156", "summary" => "A new 15,000 square foot home for the Hollub Family in Pinecrest, Florida. This home has 5 bedrooms, 6.5 baths, a pool and tennis court. The home sits on 1.25 acres.", "client_name" => "Hollub Family")
burke = Project.create("project_name" => "Burke Family Renovation", "project_address" => "9771 South Dixie Highway - Pinecrest, FL 33156", "summary" => "Renovation. This project will remodel the master bedroom, kitchen and family room.", "client_name" => "Burke Family")
weigel = Project.create("project_name" => "Weigel Family Vacation Home", "project_address" => "8824 SW 177th Terrace - Palmetto Bay, FL 33157 ", "summary" => "A new vacation home in Palmetto Bay, FL for the Weigel Family. This is a new construction on an existing property that will require demolition of the current home.", "client_name" => "Weigel Family")

Gantt.delete_all
Gantt.create("gantt_url" => "http://www.mindtools.com/media/Diagrams/Gantt-Chart-Diagram-Figure-1small.jpg", "project_id" => hollub.id )
Gantt.create("gantt_url" => "http://www.matchware.com/images/special/gantt-chart-template-640.jpg", "project_id" => burke.id )
Gantt.create("gantt_url" => "http://wordsmithbob.com/blog/wp-content/uploads/2008/11/gantt-chart-your-most-important-client-or-customer-is-you.gif", "project_id" => weigel.id)

Photo.delete_all
Photo.create("photo_url" => "http://hollubhomes.com/site/photo_gallery/pictures/17/exterior%201.jpg", "project_id" => hollub.id, "caption" => "Front Entrance")
Photo.create("photo_url" => "http://hollubhomes.com/site/photo_gallery/pictures/17/interior%202.jpg", "project_id" => hollub.id, "caption" => "Family Room")
Photo.create("photo_url" => "http://hollubhomes.com/site/photo_gallery/pictures/5/2.jpg", "project_id" => weigel.id, "caption" => "Key West Bedroom")

Update.delete_all
Update.create("summary" => "Hi Harry. Welcome the Client Connection Portal. Please call our office with any questions about how to use this program. Check back often for regular updates, new photos and documents.", "project_id" => hollub.id, "user_id" => ah.id)
Update.create("summary" => "Hi Matt. Welcome the Client Connection Portal. Please call our office with any questions about how to use this program. Check back often for regular updates, new photos and documents.", "project_id" => burke.id, "user_id" => ah.id)
Update.create("summary" => "Hi Maura. Welcome the Client Connection Portal. Please call our office with any questions about how to use this program. Check back often for regular updates, new photos and documents.", "project_id" => weigel.id, "user_id" => ah.id)

