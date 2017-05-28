puts "Seed starting"
classes = [Booking, Bike, User, BrandModel, Brand]
classes.each do |c|
  c.destroy_all
end
puts "All records deleted, creating new records"

brand = Brand.new(name:"Bullitt")
brand.save

brand_model = BrandModel.new(name:"Cargo")

brand_model.brand = brand

brand_model.save

bike1 = Bike.new(color:"white",electric:false, daily_price_in_cents:34000, description:"This beauty is sleeping in my garage since my kids learned to bike! But it's a gift and I can't let it go. Take good care of it and enjoy!",address:"Kgs Nytorv, 2200 Copenhagen")

bike1.brand_model = brand_model

user1 = User.new(email: "weed@dudu.com", password: "123456ei", name:"John", phone_number:"12 34 56 78")

bike1.user = user1

bike1.save

brand2 = Brand.new(name:"YellowBike")
brand2.save

brand3 = Brand.new(name:"Butchers & Bicycles")
brand3.save

brand4 = Brand.new(name:"Riese & Müller")
brand4.save

brand5 = Brand.new(name:"Trejo")
brand5.save

brand6 = Brand.new(name:"XYZ")
brand6.save


brand_model2 = BrandModel.new(name:"Cargo")
brand_model2.brand = brand2
brand_model2.save

brand_model3 = BrandModel.new(name:"MK-1E")
brand_model3.brand = brand3
brand_model3.save

brand_model4 = BrandModel.new(name:"Load touring")
brand_model4.brand = brand4
brand_model4.save

brand_model5 = BrandModel.new(name:"Charger")
brand_model5.brand = brand5
brand_model5.save

brand_model6 = BrandModel.new(name:"Cargo")
brand_model6.brand = brand6
brand_model6.save


user2 = User.new(email: "wuhu@dudu.com", password: "123455", name:"John", phone_number:"13 42 32 68")
user3 = User.new(email: "wihi@dudu.com", password: "123454", name:"Daniel", phone_number:"13 52 57 68")
user4 = User.new(email: "huhu@dudu.com", password: "123453", name:"Melinda", phone_number:"43 42 57 68")
user5 = User.new(email: "brum@dudu.com", password: "123452", name:"Paul", phone_number:"13 42 85 68")
user6 = User.new(email: "boby@dudu.com", password: "123451", name:"Edith", phone_number:"13 72 57 73")
user7 = User.new(email: "bob@dudu.com", password: "123450", name:"Raul", phone_number:"13 42 90 92")
user8 = User.new(email: "lars@dudu.com", password: "123457", name:"Baptiste", phone_number:"13 42 50 91")
user9 = User.new(email: "ana@dudu.com", password: "123458", name:"Juan", phone_number:"33 42 74 68")
user10 = User.new(email: "vivi@dudu.com", password: "123459", name:"Werner", phone_number:"63 43 58 68")
user11 = User.new(email: "livi@dudu.com", password: "1234510", name:"Paula", phone_number:"53 42 57 68")
user12 = User.new(email: "viki@dudu.com", password: "1234561", name:"Sandy", phone_number:"73 92 77 68")
user13 = User.new(email: "cykelbabe@dudu.com", password: "1234562", name:"Murielle", phone_number:"13 42 57 68")
user14 = User.new(email: "matt@dudu.com", password: "1234563", name:"Mathew", phone_number:"83 42 53 68")
user15 = User.new(email: "alex@dudu.com", password: "1234564", name:"Lohan", phone_number:"84 42 63 68")


bike2 = Bike.new(color:"blue",electric:false, daily_price_in_cents:50000, description:"This ugly beast",address:"Classensgade, 2100 Copenhagen")
bike2.brand_model = brand_model4
bike2.user = user2
bike2.save

bike3 = Bike.new(color:"yellow",electric:false, daily_price_in_cents:28000, description:"Nice ride",address:"Willemoesgade, 1200 Copenhagen")
bike3.brand_model = brand_model5
bike3.user = user3
bike3.save

bike4 = Bike.new(color:"yellow",electric:false, daily_price_in_cents:31000, description:"Old and gracefull",address:"Noerrebrogade, 2200 Copenhagen")
bike4.brand_model = brand_model2
bike4.user = user4
bike4.save

bike5 = Bike.new(color:"black",electric:false, daily_price_in_cents:45000, description:"Brand new",address:"Soenderbulevard, 2300 Copenhagen")
bike5.brand_model = brand_model
bike5.user = user5
bike5.save

bike6 = Bike.new(color:"yellow",electric:false, daily_price_in_cents:47000, description:"Join the fun ride!",address:"Vesterbro, 1674 Copenhagen")
bike6.brand_model = brand_model
bike6.user = user6
bike6.save

bike7 = Bike.new(color:"metal",electric:false, daily_price_in_cents:34000, description:"Sweet family bike! Rent it for a weekend!",address:"Enghavevej, 1674 Copenhagen")
bike7.brand_model = brand_model6
bike7.user = user7
bike7.save

bike8 = Bike.new(color:"black",electric:false, daily_price_in_cents:33000, description:"Sporty little beast!",address:"Kingos gade, 2000 Copenhagen")
bike8.brand_model = brand_model
bike8.user = user8
bike8.save

bike9 = Bike.new(color:"white",electric:false, daily_price_in_cents:55000, description:"Pets allowed! Take you puppy for a ride!",address:"Kongens Nytorv, 2000 Copenhagen")
bike9.brand_model = brand_model3
bike9.user = user9
bike9.save

bike10 = Bike.new(color:"yellow",electric:false, daily_price_in_cents:39000, description:"Take a lovely bike trip in town!",address:"Norreport, 2100 Copenhagen")
bike10.brand_model = brand_model
bike10.user = user10
bike10.save


booking = Booking.new(start_date:Date.today+7,end_date:Date.today+15)
booking.bike = bike1
booking.user = user11
booking.save

booking2 = Booking.new(start_date:Date.today-21,end_date:Date.today-15)
booking2.bike = bike3
booking2.user = user12
booking2.save

booking3 = Booking.new(start_date:Date.today-18,end_date:Date.today-10)
booking3.bike = bike5
booking3.user = user13
booking3.save

booking4 = Booking.new(start_date:Date.today+7,end_date:Date.today+15)
booking4.bike = bike9
booking4.user = user14
booking4.save


url = "http://res.cloudinary.com/duubesaxh/image/upload/v1495624187/bike1_nnif62.png"
bike1.photo_url = url

url2 = "http://res.cloudinary.com/duubesaxh/image/upload/v1495624188/bike2_zmiz40.png"
bike2.photo_url = url2

url3 = "http://res.cloudinary.com/duubesaxh/image/upload/v1495624187/bike3_fh3tnn.png"
bike3.photo_url = url3

url4 = "http://res.cloudinary.com/duubesaxh/image/upload/v1495624187/bike4_johchb.png"
bike4.photo_url = url4

url5 = "http://res.cloudinary.com/duubesaxh/image/upload/v1495624187/bike5_yh3gy0.png"
bike5.photo_url = url5

url6 = "http://res.cloudinary.com/duubesaxh/image/upload/v1495624187/bike6_hg5abu.png"
bike6.photo_url = url6

url7 = "http://res.cloudinary.com/duubesaxh/image/upload/v1495624188/bike7_sjoq0b.png"
bike7.photo_url = url7

url8 = "http://res.cloudinary.com/duubesaxh/image/upload/v1495624188/bike8_abxyre.png"
bike8.photo_url = url8

url9 = "http://res.cloudinary.com/duubesaxh/image/upload/v1495624191/bike9_kno26k.png"
bike9.photo_url = url9

url10 = "http://res.cloudinary.com/duubesaxh/image/upload/v1495624190/bike10_gbymli.png"
bike10.photo_url = url10

bike2.electric = true
bike2.save
bike6.electric = true
bike6.save
bike9.electric = true
bike9.save
bike10.electric = true
bike10.save

puts "Seed finished"
