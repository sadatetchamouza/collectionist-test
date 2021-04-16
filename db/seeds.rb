# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


shop = Shop.new(:name => "My Shop")
if shop.save
    Date::DAYNAMES.each_with_index do |d, i|
        puts "#{d} == #{i}"
        if i == 0
            shop.opening_hours.create!(
            :day_of_week => i
            )
        elsif i == 6
            shop.opening_hours.create!(
            :day_of_week => i,
            :start_at => "10:30",
            :end_at => "20:00"
            )
        else
            shop.opening_hours.create!(
            :day_of_week => i,
            :start_at => "10:30",
            :end_at => "15:00",
            :second_start_at => "17:00",
            :second_end_at => "20:00"
            )
        end
    end
end