# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Product.create([
    {name:"i Phone 11" , brand: " apple",price:"100$"},  
    
    {name:"i Phone  12" , brand: " apple",price:"120$"}, 

    {name:"i Phone  13" , brand: " apple",price:"150$"}, 

    {name:"i Phone  14" , brand: " apple",price:"160$"}, 

    {name:"i Phone  15" , brand: " apple",price:"170$"}, 
])
