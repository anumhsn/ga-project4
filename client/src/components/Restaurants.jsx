import React from 'react';
import { fetchRestaurants } from '../api-helper';
// import Carousel from "@brainhubeu/react-carousel";
import CreateRestaurant from './CreateRestaurant'
import "react-responsive-carousel/lib/styles/carousel.min.css";
import ReactDOM from 'react-dom';


// const Carousel = require('react-responsive-carousel').Carousel;

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
                {/* <Carousel showArrows={true} > */}
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
                        </div>
                    ))
                }
                {/* </Carousel> */}
                <CreateRestaurant 
                    category={this.props.category}
                />
            </div>
        )
    }
}
// ReactDOM.render(<Restaurants />);
export default Restaurants;