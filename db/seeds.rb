puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

4.times do
company_id = Company.ids.sample
dev_id = Dev.ids.sample
value = rand(20..100)
item_name = rand(1..12)



Freebie.create(company_id: company_id, dev_id: dev_id, value: value, item_name: item_name)

end


puts "Seeding done!"
