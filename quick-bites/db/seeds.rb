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

Restaurant.create(
    name: "Devocion",
    location: "25 E 20th St New York, NY 10003",
    rest_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOhhrpcFd5_9_TTNvL3F3l8zplQO8fiEZBbrJnhyP7m9LCcvnf8Q",
    food_img: "https://s3-media1.fl.yelpcdn.com/bphoto/DSDiuXYtj7o9VC2Q6BBIXw/o.jpg",
    description:"Both traditional and inventive, drinks include a Hickory-Smoked S’mores Latte, Late Summer Shrub with Serrano Chiles and Botanicals, Deconstructed Espresso Tonic, and Ethiopia Guji Hambela Filter Coffee. Of course, all milks, including almond, cashew, pepita, and oat, are offered, along with a selection of beer and wine for the after 5 pm crowd.",
    rating: "4",
    link: "https://www.devocion.com/",
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

Restaurant.create([
    name: "Farine Baking Company",
    location: "74-24 37th Ave, Jackson Heights, NY 11372",
    rest_img: "http://addysbbq.com/wp-content/uploads/2018/10/AddysBBQ_ChickenMishkaki2_2880x2304-2.jpg",
    food_img: "https://www.farinebakingcompany.com/wp-content/uploads/2019/05/Burger01-800x533.jpg",
    description:"https://s3-media3.fl.yelpcdn.com/bphoto/k9ylycpEoLGclDGNT9A7EQ/o.jpg",
    rating: "4",
    link: "https://www.farinebakingcompany.com/",
    category_id: 2
])

Restaurant.create([
    name: "Holy Cow",
    location: "15 w 29th St New York, NY 10001",
    rest_img: "http://addysbbq.com/wp-content/uploads/2018/10/AddysBBQ_ChickenMishkaki2_2880x2304-2.jpg",
    food_img: "https://images.squarespace-cdn.com/content/v1/5c5ce047d86cc973de4af5ee/1549592579173-3GBKXH9L3UGUHH2AT0C3/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/HolyCow_Sous-VideDog_-3.jpg?format=1500w",
    description:"https://s3-media3.fl.yelpcdn.com/bphoto/k9ylycpEoLGclDGNT9A7EQ/o.jpg",
    rating: "4",
    link: "https://www.holycow.nyc/",
    category_id: 2
])



# VEGAN
Category.create(name: "Vegan", img: "https://images.unsplash.com/photo-1511689660979-10d2b1aada49?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80")

Restaurant.create(
    name: "Jajaja",
    location: "162 E Broadway New York, NY 10002",
    rest_img: "https://s3-media1.fl.yelpcdn.com/bphoto/YX6iy-lJaDCVZ2luXAHHRw/o.jpg",
    food_img: "https://s3-media2.fl.yelpcdn.com/bphoto/QaIhCEp1FpU3a2teWQh6mA/o.jpg",
    description: "The venue features a playfully curated Tequila and Mezcal program, Mexican beers on tap, Mexican-style lagers and pilsners from local microbreweries, fresh pressed juices, and plant-based street food with options for both comfort and health.", 
    rating: "4.5",
    link: "https://www.jajajamexicana.com/",
    category_id: 3
)

Restaurant.create(
    name: "The Cinnamon Snail",
    location: "The Pennsy Foodhall, 2 Pennsylvania Plaza, New York, NY 10121, USA",
    rest_img: "https://s3-media1.fl.yelpcdn.com/bphoto/YX6iy-lJaDCVZ2luXAHHRw/o.jpg",
    food_img: "https://scontent-ort2-1.cdninstagram.com/vp/0c0a85fab467d816949c0ca36c213dfc/5DE06043/t51.2885-15/e35/s320x320/67074817_1089285007927905_969887230870961169_n.jpg?_nc_ht=scontent-ort2-1.cdninstagram.com",
    description: "The venue features a playfully curated Tequila and Mezcal program, Mexican beers on tap, Mexican-style lagers and pilsners from local microbreweries, fresh pressed juices, and plant-based street food with options for both comfort and health.", 
    rating: "4.5",
    link: "https://cinnamonsnail.com/",
    category_id: 3
)

Restaurant.create(
    name: "Ladybird",
    location: "111 E 7th St, New York, NY 10009",
    rest_img: "https://s3-media1.fl.yelpcdn.com/bphoto/YX6iy-lJaDCVZ2luXAHHRw/o.jpg",
    food_img: "https://images.squarespace-cdn.com/content/v1/5772b75f6a4963241058e6fb/1560362807012-SQJ9N2WQZSY68Z2RACGJ/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/tomato+tart7.jpg?format=1500w",
    description: "The venue features a playfully curated Tequila and Mezcal program, Mexican beers on tap, Mexican-style lagers and pilsners from local microbreweries, fresh pressed juices, and plant-based street food with options for both comfort and health.", 
    rating: "4.5",
    link: "http://www.ladybirdny.com/",
    category_id: 3
)



# DESSERT
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

Restaurant.create(
    name: "Spot Dessert Bar",
    location: "5 Saint Marks Pl New York, NY 10003",
    rest_img: "https://s3-media2.fl.yelpcdn.com/bphoto/LY2oeuq7RcG7hyiB_F-okg/o.jpg", 
    food_img: "https://scontent.cdninstagram.com/vp/cf4571c209266918692c9a04526a86db/5DD874C1/t51.2885-15/sh0.08/e35/p640x640/66685346_517573362318414_6901472416798081034_n.jpg?_nc_ht=scontent.cdninstagram.com",
    description: "Italy's gourmet chocolatier Venchi made a narrow, festive storefront near Union Square that features a full gelato counter, towering walls of treats, extravagant coffee drinks, made-to-order crepes, and, in the back cascading behind the entire seating area, what is purportedly North America's largest chocolate waterfall.",
    rating: "4.5",
    link: "https://www.spotdessertbar.com/",
    category_id: 4
)

Restaurant.create(
    name: "Eggloo",
    location: "60 Mulberry St New York, NY 10013",
    rest_img: "https://s3-media2.fl.yelpcdn.com/bphoto/LY2oeuq7RcG7hyiB_F-okg/o.jpg", 
    food_img: "https://images.squarespace-cdn.com/content/v1/595fc1181b631b080b6405b4/1562266994884-506SDBWDTOOGE2CO9V7F/ke17ZwdGBToddI8pDm48kFY4Mu8dPicOlR3ALBXKKRJZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpz4eS2cgERuS_VnT6ktAmeiMtUxgdV0T31Rtzv2Y-SMbWe8A2Hc0IM0dNEzPfWnHs8/image-asset.jpeg?format=750w",
    description: "Italy's gourmet chocolatier Venchi made a narrow, festive storefront near Union Square that features a full gelato counter, towering walls of treats, extravagant coffee drinks, made-to-order crepes, and, in the back cascading behind the entire seating area, what is purportedly North America's largest chocolate waterfall.",
    rating: "4",
    link: "https://www.myeggloo.com/",
    category_id: 4
)