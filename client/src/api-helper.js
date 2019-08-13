import axios from 'axios'

export const fetchCategories = async() => {
    const categories = await axios.get('http://localhost:3000/categories');
    return categories.data;
}

export const fetchRestaurants = async(cat_id) => {
    const restaurants = await axios.get(`http://localhost:3000/categories/${cat_id}/restaurants`);
    return restaurants.data;
}