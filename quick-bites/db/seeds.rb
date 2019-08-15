# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# categories
# cafe = Category.create([name: "Cafe", img: "https://images.unsplash.com/photo-1426260193283-c4daed7c2024?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80"])
# halal = Category.create([name: "Halal", img: "https://images.unsplash.com/photo-1553355952-dc7434928da2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"])
# vegan = Category.create([name: "Vegan", img: "https://images.unsplash.com/photo-1510629954389-c1e0da47d414?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"])
# dessert = Category.create([name: "Dessert", img: "https://images.unsplash.com/photo-1469533667357-006056eaf780?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"])

# # cafes
# cafe1 = Restaurant.create([
#     name: "Coffee Project NY",
#     location: "78 Rockwell Pl Brooklyn, NY 11217",
#     rest_img: "https://vrteje8p14-flywheel.netdna-ssl.com/wp-content/uploads/2018/11/Coffee_made_me_do_it.jpg",
#     food_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbIE6MdTHxOJJ4a2RTtQNd1RIAzOwQ6reGcSCq_BZYk2afnep",
#     description: "Features a latte broken down into an ordered, three-glass flight: espresso, milk (pasteurized at a lower temperature to imitate the taste of the raw stuff) and then a finished, fully-composed latte. Drinkers are able to single out individual flavors as they linger on the palate, before reconciling them in the completed product.",
#     rating: "4.5",
#     link: "https://www.yelp.com/biz/coffee-project-ny-new-york"
# ]) 

# cafe2 = Restaurant.create([
#     name: "Felix Roasting Co",
#     location: "450 Park Ave S New York, NY 10016",
#     rest_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOhhrpcFd5_9_TTNvL3F3l8zplQO8fiEZBbrJnhyP7m9LCcvnf8Q",
#     food_img: "https://s3-media2.fl.yelpcdn.com/bphoto/NvUTTeBgvzAtC4s9AEnnZg/o.jpg",
#     description:"Both traditional and inventive, drinks include a Hickory-Smoked S’mores Latte, Late Summer Shrub with Serrano Chiles and Botanicals, Deconstructed Espresso Tonic, and Ethiopia Guji Hambela Filter Coffee. Of course, all milks, including almond, cashew, pepita, and oat, are offered, along with a selection of beer and wine for the after 5 pm crowd.",
#     rating: "4.5",
#     link: "https://www.yelp.com/biz/felix-roasting-co-new-york-3"
# ])

# halal1 = Restaurant.create([
#     name: "Addy's Barbeque",
#     location: "30-94 Steinway St Astoria, NY 11103",
#     rest_img: "http://addysbbq.com/wp-content/uploads/2018/10/AddysBBQ_ChickenMishkaki2_2880x2304-2.jpg",
#     food_img: "https://s3-media3.fl.yelpcdn.com/bphoto/k9ylycpEoLGclDGNT9A7EQ/o.jpg",
#     description:"https://s3-media3.fl.yelpcdn.com/bphoto/k9ylycpEoLGclDGNT9A7EQ/o.jpg",
#     rating: "4",
#     link: "https://www.yelp.com/biz/addys-barbeque-astoria"
# ])

# vegan1 = Restaurant.create([
#     name: "Jajaja",
#     location: "162 E Broadway New York, NY 10002",
#     rest_img: "https://s3-media1.fl.yelpcdn.com/bphoto/YX6iy-lJaDCVZ2luXAHHRw/o.jpg",
#     food_img: "https://s3-media2.fl.yelpcdn.com/bphoto/QaIhCEp1FpU3a2teWQh6mA/o.jpg",
#     description: "The venue features a playfully curated Tequila and Mezcal program, Mexican beers on tap, Mexican-style lagers and pilsners from local microbreweries, fresh pressed juices, and plant-based street food with options for both comfort and health.", 
#     rating: "4.5",
#     link: "https://www.yelp.com/biz/jajaja-new-york"
# ])

# dessert1 = Restaurant.create([
#     name: "Venchi",
#     location: "861 Broadway New York, NY 10003",
#     rest_img: "https://s3-media2.fl.yelpcdn.com/bphoto/LY2oeuq7RcG7hyiB_F-okg/o.jpg", 
#     food_img: "https://s3-media1.fl.yelpcdn.com/bphoto/UN3vgNYznm-TxiiQsBFfdQ/o.jpg",
#     description: "Italy's gourmet chocolatier Venchi made a narrow, festive storefront near Union Square that features a full gelato counter, towering walls of treats, extravagant coffee drinks, made-to-order crepes, and, in the back cascading behind the entire seating area, what is purportedly North America's largest chocolate waterfall.",
#     rating: "4",
#     link: "https://www.yelp.com/biz/venchi-new-york"
# ])

# halal = Restaurant.create([
#     name:
#     location:
#     rest_img:
#     food_img:
#     description:
#     rating:
# ])



# cafe.restaurants.push(cafe1)
# cafe.restaurants.push(cafe2)
# halal.restaurants.push(halal1)
# vegan.restaurants.push(vegan1)
# dessert.restaurants.push(dessert1)

# CAFES 
Category.create(name: "Cafe", img: "https://images.unsplash.com/photo-1426260193283-c4daed7c2024?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80")

Restaurant.create(
    name: "Coffee Project NY",
    location: "78 Rockwell Pl Brooklyn, NY 11217",
    rest_img: "https://vrteje8p14-flywheel.netdna-ssl.com/wp-content/uploads/2018/11/Coffee_made_me_do_it.jpg",
    food_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbIE6MdTHxOJJ4a2RTtQNd1RIAzOwQ6reGcSCq_BZYk2afnep",
    description: "Features a latte broken down into an ordered, three-glass flight: espresso, milk (pasteurized at a lower temperature to imitate the taste of the raw stuff) and then a finished, fully-composed latte. Drinkers are able to single out individual flavors as they linger on the palate, before reconciling them in the completed product.",
    rating: "4.5",
    link: "https://www.yelp.com/biz/coffee-project-ny-new-york",
    category_id: 1
) 

Restaurant.create(
    name: "Felix Roasting Co",
    location: "450 Park Ave S New York, NY 10016",
    rest_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOhhrpcFd5_9_TTNvL3F3l8zplQO8fiEZBbrJnhyP7m9LCcvnf8Q",
    food_img: "https://s3-media2.fl.yelpcdn.com/bphoto/NvUTTeBgvzAtC4s9AEnnZg/o.jpg",
    description:"Both traditional and inventive, drinks include a Hickory-Smoked S’mores Latte, Late Summer Shrub with Serrano Chiles and Botanicals, Deconstructed Espresso Tonic, and Ethiopia Guji Hambela Filter Coffee. Of course, all milks, including almond, cashew, pepita, and oat, are offered, along with a selection of beer and wine for the after 5 pm crowd.",
    rating: "4.5",
    link: "https://www.yelp.com/biz/felix-roasting-co-new-york-3",
    category_id: 1
)

# HALAL
Category.create(name: "Halal", img: "https://images.unsplash.com/photo-1553355952-dc7434928da2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")


Restaurant.create([
    name: "Addy's Barbeque",
    location: "30-94 Steinway St Astoria, NY 11103",
    rest_img: "http://addysbbq.com/wp-content/uploads/2018/10/AddysBBQ_ChickenMishkaki2_2880x2304-2.jpg",
    food_img: "https://s3-media3.fl.yelpcdn.com/bphoto/k9ylycpEoLGclDGNT9A7EQ/o.jpg",
    description:"https://s3-media3.fl.yelpcdn.com/bphoto/k9ylycpEoLGclDGNT9A7EQ/o.jpg",
    rating: "4",
    link: "https://www.yelp.com/biz/addys-barbeque-astoria",
    category_id: 2
])


Category.create(name: "Vegan", img: "https://images.unsplash.com/photo-1510629954389-c1e0da47d414?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")

Restaurant.create(
    name: "Jajaja",
    location: "162 E Broadway New York, NY 10002",
    rest_img: "https://s3-media1.fl.yelpcdn.com/bphoto/YX6iy-lJaDCVZ2luXAHHRw/o.jpg",
    food_img: "https://s3-media2.fl.yelpcdn.com/bphoto/QaIhCEp1FpU3a2teWQh6mA/o.jpg",
    description: "The venue features a playfully curated Tequila and Mezcal program, Mexican beers on tap, Mexican-style lagers and pilsners from local microbreweries, fresh pressed juices, and plant-based street food with options for both comfort and health.", 
    rating: "4.5",
    link: "https://www.yelp.com/biz/jajaja-new-york",
    category_id: 3
)

Category.create(name: "Dessert", img: "https://images.unsplash.com/photo-1469533667357-006056eaf780?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")

Restaurant.create(
    name: "Venchi",
    location: "861 Broadway New York, NY 10003",
    rest_img: "https://s3-media2.fl.yelpcdn.com/bphoto/LY2oeuq7RcG7hyiB_F-okg/o.jpg", 
    food_img: "https://s3-media1.fl.yelpcdn.com/bphoto/UN3vgNYznm-TxiiQsBFfdQ/o.jpg",
    description: "Italy's gourmet chocolatier Venchi made a narrow, festive storefront near Union Square that features a full gelato counter, towering walls of treats, extravagant coffee drinks, made-to-order crepes, and, in the back cascading behind the entire seating area, what is purportedly North America's largest chocolate waterfall.",
    rating: "4",
    link: "https://www.yelp.com/biz/venchi-new-york",
    category_id: 4
)