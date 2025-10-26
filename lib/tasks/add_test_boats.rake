namespace :boats do
  desc "Seed 3 Melges15 and 2 ILCA"
  task add_test_boats: :environment do
    seller = User.find_or_create_by!(email: "seller@example.com") { |u| u.phone = "555-0000" }

    3.times do |i|
      Melges15.create!(
        title: "Melges 15 ##{i + 1}",
        description: "Melges 15 boat #{i + 1}",
        year: 2021 + (i % 3),
        number: "M15-#{1000 + i}",
        manufacturer: "Melges",
        price: 15000 + (i * 500),
        seller: seller
      )
    end

    2.times do |i|
      ILCA.create!(
        title: "ILCA ##{i + 1}",
        description: "ILCA boat #{i + 1}",
        year: 2020 + i,
        number: "ILCA-#{2000 + i}",
        manufacturer: "ILCA",
        price: 7000 + (i * 300),
        seller: seller
      )
    end

    puts "Seeded 3 Melges15 and 2 ILCA"
  end
end
