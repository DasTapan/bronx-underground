# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.where(email: 'tapands.das@gmail.com').first_or_initialize
user.update!(
    password: 'password',
    password_confirmation: 'password'
)

user = User.where(email: 'debadash@gmail.com').first_or_initialize
user.update!(
    password: 'password_two',
    password_confirmation: 'password_two'
)

user = User.where(email: 'subhamnanda@gmail.com').first_or_initialize
user.update!(
    password: 'password_three',
    password_confirmation: 'password_three'
)

user = User.where(email: 'shaktimishra@gmail.com').first_or_initialize
user.update!(
    password: 'password_four',
    password_confirmation: 'password_four'
)

user = User.where(email: 'narayansatpathy@gmail.com').first_or_initialize
user.update!(
    password: 'password_five',
    password_confirmation: 'password_five'
)

user = User.where(email: 'satyasahoo@gmail.com').first_or_initialize
user.update!(
    password: 'password_six',
    password_confirmation: 'password_six'
)

user = User.where(email: 'sibamohapatra@gmail.com').first_or_initialize
user.update!(
    password: 'password_seven',
    password_confirmation: 'password_seven'
)

user = User.where(email: 'swabhimandas@gmail.com').first_or_initialize
user.update!(
    password: 'password_eight',
    password_confirmation: 'password_eight'
)

user = User.where(email: 'sekhardas@gmail.com').first_or_initialize
user.update!(
    password: 'password_nine',
    password_confirmation: 'password_nine'
)

user = User.where(email: 'sanjayadas@gmail.com').first_or_initialize
user.update!(
    password: 'password_ten',
    password_confirmation: 'password_ten'
)

user = User.where(email: 'rakeshmishra@gmail.com').first_or_initialize
user.update!(
    password: 'password_eleven',
    password_confirmation: 'password_eleven'
)
