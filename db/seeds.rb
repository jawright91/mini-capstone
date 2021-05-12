# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "Gizmo", price: 420, description: "Nice. Blaze it!", inventory: 69, supplier_id: 1)
Product.create(name: "\"Neck Massager\"", price: 69, description: "*snickers*", inventory: 69, supplier_id: 1)
Product.create(name: "Hack.exe Floppy Disk", price: 1337, description: "17 W1LL H3LP U ST33L B17C01N2", inventory: 69, supplier_id: 2)
Product.create(name: "Peter Jang's Cookbook", price: 1.99, description: "Now with mud pie!", inventory: 69, supplier_id: 2)

Supplier.create(name: "Sketchy Ricky", email: "rick@hotmail.com.scam.pa", phone_number: "1(800)555-0123")
Supplier.create(name: "Peter Jang", email: "peter@actualize.com", phone_number: "1(234)567-8910")

Image.create(url: "https://images.dailyhive.com/20190418120156/DSC00517.jpg", product_id: 1)
Image.create(url: "https://thumbs.dreamstime.com/b/pixel-censored-sign-black-censor-bar-vector-illustration-pixel-censored-sign-black-censor-bar-concept-vector-illustration-eps-177308668.jpg", product_id: 2)
Image.create(url: "https://www.silicon.co.uk/wp-content/uploads/2017/04/floppy-disks-684x513.jpg", product_id: 3)
Image.create(url: "https://cdn.shopify.com/s/files/1/2131/2399/products/MISSONICOOKBOOK-Spread-8_2048x.jpg?v=1586437185", product_id: 4)
Image.create(url: "https://lh3.googleusercontent.com/proxy/464bQ3Y-MMuq9nsNBkBtOOUt0SfadKpViPtx41xy7-cp4q2504gR0ApLyMZiuyFxm0DUY33C1d0dvcstEVsll6mAgaZCsT3VmddNxLX5crQ95c-YIBLNbjIfm_U6Ww", product_id: 4)
