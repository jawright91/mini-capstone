# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "Gizmo", price: 420, image_url: "https://images.dailyhive.com/20190418120156/DSC00517.jpg", description: "Nice.", inventory: 69, supplier_id: 1)
Product.create(name: "\"Neck Massager\"", price: 69, image_url: "https://thumbs.dreamstime.com/b/pixel-censored-sign-black-censor-bar-vector-illustration-pixel-censored-sign-black-censor-bar-concept-vector-illustration-eps-177308668.jpg", description: "*snickers*", inventory: 69, supplier_id: 1)
Product.create(name: "Hack.exe Floppy Disk", price: 1337, image_url: "https://www.silicon.co.uk/wp-content/uploads/2017/04/floppy-disks-684x513.jpg", description: "17 W1LL H3LP U ST33L B17C01N2", inventory: 69, supplier_id: 2)
Product.create(name: "Peter Jang's Cookbook", price: 1.99, description: "Now with mud pie!", inventory: 69, supplier_id: 2)

Supplier.create(name: "Sketchy Ricky", email: "rick@hotmail.com.scam.pa", phone_number: "1(800)555-0123")
Supplier.create(name: "Peter Jang", email: "peter@actualize.com", phone_number: "1(234)567-8910")
