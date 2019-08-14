import axios from 'axios'

export const fetchCategories = async() => {
    const categories = await axios.get('http://localhost:3000/categories');
    return categories.data;
}

export const fetchRestaurants = async(cat_id) => {
    const restaurants = await axios.get(`http://localhost:3000/categories/${cat_id}/restaurants`);
    return restaurants.data;
}

export const createRestaurant = async (cat_id, restData) => {
    const restaurant = await axios.post(`http://localhost:3000/categories/${cat_id}/restaurants`, {...restData, category_id: cat_id});
    return restaurant.data;
}