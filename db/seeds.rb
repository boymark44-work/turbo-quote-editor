# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Reusing the data from fixtures files in test environment unto the development environment.
# Meaning that fake data from test will be reuse in development environment.
puts "\n== Seeding the databse with fixtures"
system("bin/rails db:fixtures:load")

# Running the % bin/rails db:seed is now equivalent to removing all the quotes and loading fixtures as development data. 
# Always run the % bin/rails db:seed command to generate fake data. 