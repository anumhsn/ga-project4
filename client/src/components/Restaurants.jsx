import React from 'react';
import {Route, Link} from 'react-router-dom'
import {withRouter} from 'react-router-dom';
import { fetchRestaurants } from '../api-helper';

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
                            <p>{rest.description}</p>
                            <p>Rating: {rest.rating}</p>
                            <a href={rest.link}>Yelp</a>
                        </div>
                    ))
                }
            </div>
        )
    }
}

export default Restaurants;