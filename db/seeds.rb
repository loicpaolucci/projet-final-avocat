require 'faker'

10.times do
    firm = Firm.new
    firm.name = Faker::University.greek_organization
    firm.rating = rand (1..5)
    firm.phone_number = "+33671563945"
    firm.email = firm.name + "@gmail.com"
    firm.departement_id = 1
    firm.save
end