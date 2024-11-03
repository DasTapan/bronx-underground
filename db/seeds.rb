# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


tapan = User.where(email: 'tapands.das@gmail.com').first_or_initialize
tapan.update!(
    password: 'password',
    password_confirmation: 'password'
)

deba = User.where(email: 'debadash@gmail.com').first_or_initialize
deba.update!(
    password: 'password_two',
    password_confirmation: 'password_two'
)

subham = User.where(email: 'subhamnanda@gmail.com').first_or_initialize
subham.update!(
    password: 'password_three',
    password_confirmation: 'password_three'
)

shakti = User.where(email: 'shaktimishra@gmail.com').first_or_initialize
shakti.update!(
    password: 'password_four',
    password_confirmation: 'password_four'
)

narayan = User.where(email: 'narayansatpathy@gmail.com').first_or_initialize
narayan.update!(
    password: 'password_five',
    password_confirmation: 'password_five'
)

satya = User.where(email: 'satyasahoo@gmail.com').first_or_initialize
satya.update!(
    password: 'password_six',
    password_confirmation: 'password_six'
)

siba = User.where(email: 'sibamohapatra@gmail.com').first_or_initialize
siba.update!(
    password: 'password_seven',
    password_confirmation: 'password_seven'
)

swabhiman = User.where(email: 'swabhimandas@gmail.com').first_or_initialize
swabhiman.update!(
    password: 'password_eight',
    password_confirmation: 'password_eight'
)

sekhar = User.where(email: 'sekhardas@gmail.com').first_or_initialize
sekhar.update!(
    password: 'password_nine',
    password_confirmation: 'password_nine'
)

sanjaya = User.where(email: 'sanjayadas@gmail.com').first_or_initialize
sanjaya.update!(
    password: 'password_ten',
    password_confirmation: 'password_ten'
)

rakesh = User.where(email: 'rakeshmishra@gmail.com').first_or_initialize
rakesh.update!(
    password: 'password_eleven',
    password_confirmation: 'password_eleven'
)
