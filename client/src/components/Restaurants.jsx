import React from 'react';
import {Route, Link} from 'react-router-dom'
import {withRouter} from 'react-router-dom';
import { async } from 'q';
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
                            <p>{rest.name}</p>
                        </div>
                    ))
                }
            </div>
        )
    }
}

export default Restaurants;