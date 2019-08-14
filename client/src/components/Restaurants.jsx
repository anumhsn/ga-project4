import React from 'react';
import { fetchRestaurants, deleteOneRestaurant } from '../api-helper';
import CreateNewRestaurant from './CreateRestaurant'
import "react-responsive-carousel/lib/styles/carousel.min.css";


class Restaurants extends React.Component{
    constructor(props){
        super(props);
        this.state={
            restaurants: [],
            id: this.props.cat_id
        }
    }

    componentDidMount = async() => {
        const restaurants = await fetchRestaurants(this.state.id);
        this.setState({
            restaurants: restaurants
        })
       
    }

    handledelete = async(cat_id, id) =>{
        await deleteOneRestaurant(cat_id, id);
        this.setState(prevState => ({
            restaurants: prevState.restaurants.filter(
              restaurant => restaurant.id !== parseInt(id)
            )
        }));
    }

    render(){
        return(
            <div className="all-restaurants">
                {
                    this.state.restaurants.map((rest) => 
                    (
                        <div key={rest.id}>
                            <h3>{rest.name}</h3>
                            <p>{rest.location}</p>
                            <img src={rest.rest_img}/>
                            <img src={rest.food_img}/>
                            <p>Rating: {rest.rating}</p>
                            <a href={rest.link}>Yelp</a>
                            <button onClick={()=>{
                                const { id } = this.props.category;
                                this.handledelete(id , rest.id)
                                
                                }}>Delete</button>
                        </div>
                    ))
                }
                <CreateNewRestaurant 
                    category={this.props.category}
                />
            </div>
        )
    }
}
export default Restaurants;