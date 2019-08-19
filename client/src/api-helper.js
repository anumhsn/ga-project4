import axios from 'axios'


// const BASE_URL = 'https://polar-inlet-48121.herokuapp.com/';
// const api = axios.create({
//     baseURL: BASE_URL
// })

// export const fetchCategories = async() => {
//     // const categories = await axios.get('http://localhost:3000/categories');
//     const categories = await api.get('/categories');
//     return categories.data;
// }

// export const fetchRestaurants = async(cat_id) => {
//     // const restaurants = await axios.get(`http://localhost:3000/categories/${cat_id}/restaurants`);
//     const restaurants = await api.get(`/categories/${cat_id}/restaurants`);
//     return restaurants.data;
// }

// export const createRestaurant = async (cat_id, restData) => {
//     // const restaurant = await axios.post(`http://localhost:3000/categories/${cat_id}/restaurants`, {...restData, category_id: cat_id});
//     const restaurant = await api.post(`/categories/${cat_id}/restaurants`, {...restData, category_id: cat_id});

//     return restaurant.data;
// }

// export const deleteOneRestaurant = async (cat_id, id) =>{
//     // await axios.delete(`http://localhost:3000/categories/${cat_id}/restaurants/${id}`);
//     await api.delete(`/${cat_id}/restaurants/${id}`);

// }

// export const updateOneRestaurant = async (cat_id, id, data) => {
//     // const resp = await axios.put(`http://localhost:3000/categories/${cat_id}/restaurants/${id}`,data);
//     const resp = await api.put(`/${cat_id}/restaurants/${id}`,data);
//     return resp.data;
// }

// -------------------------------------------------- LOCAL:

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

export const deleteOneRestaurant = async (cat_id, id) =>{
    await axios.delete(`http://localhost:3000/categories/${cat_id}/restaurants/${id}`);
}

export const updateOneRestaurant = async (cat_id, id, data) => {
    const resp = await axios.put(`http://localhost:3000/categories/${cat_id}/restaurants/${id}`,data);
    return resp.data;
}