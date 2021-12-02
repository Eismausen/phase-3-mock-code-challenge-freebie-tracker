puts "Clearing old data"
Dev.destroy_all
Company.destroy_all
Freebie.destroy_all

puts "Creating companies..."
c1 = Company.create(name: "Google", founding_year: 1998)
c2 = Company.create(name: "Facebook", founding_year: 2004)
c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4 = Company.create(name: "Enron", founding_year: 1995)
c5 = Company.create(name: "Rick's Garage-Foundry of Technological Marvels (and Unceasing Nightmares)", founding_year: 2013)

puts "Creating devs..."
d136 = Dev.create(name: "Rick")
d2 = Dev.create(name: "Morty")
d3 = Dev.create(name: "Mr. Meseeks")
d4 = Dev.create(name: "Gazorpazorp")

puts "Creating freebies...(this used to be a lie)"
Freebie.create(item_name: "Fake interdimensional portal gun", value: 0, company_id: c5.id, dev_id: d2.id)
Freebie.create(item_name: "Fake interdimensional portal gun", value: 0, company_id: c5.id, dev_id: d3.id)
Freebie.create(item_name: "Fake interdimensional portal gun", value: 0, company_id: c5.id, dev_id: d4.id)

Freebie.create(item_name: "Fake Meseeks cube", value: 0, company_id: c5.id, dev_id: d3.id)
Freebie.create(item_name: "Fake Meseeks cube", value: 0, company_id: c5.id, dev_id: d4.id)
Freebie.create(item_name: "Fake Meseeks cube", value: 0, company_id: c5.id, dev_id: d2.id)

Freebie.create(item_name: "Real dead Rick from another timeline", value: 100, company_id: c5.id, dev_id: d4.id)
Freebie.create(item_name: "Real dead Rick from another timeline", value: 100, company_id: c5.id, dev_id: d2.id)

Freebie.create(item_name: "Real interdimensional portal gun", value: 100000000, company_id: c5.id, dev_id: d136.id)

Freebie.create(item_name: "Google(TM)-branded Nylon sticker", value: 0, company_id: c1.id, dev_id: d136.id)
Freebie.create(item_name: "Google(TM)-branded Nylon sticker", value: 0, company_id: c1.id, dev_id: d2.id)
Freebie.create(item_name: "Google(TM)-branded Nylon sticker", value: 0, company_id: c1.id, dev_id: d3.id)

Freebie.create(item_name: "'I hate Mondays' t-shirt", value: 15, company_id: c4.id, dev_id: d4.id)

Freebie.create(item_name: "Dunder Mifflin single reem of hammermill paper", value: 25, company_id: c3.id, dev_id: d136.id)
Freebie.create(item_name: "Dunder Mifflin single reem of hammermill paper", value: 25, company_id: c3.id, dev_id: d2.id)
Freebie.create(item_name: "Dunder Mifflin single reem of hammermill paper", value: 25, company_id: c3.id, dev_id: d3.id)
Freebie.create(item_name: "Dunder Mifflin single reem of hammermill paper", value: 25, company_id: c3.id, dev_id: d4.id)

puts "Seeding done!"
