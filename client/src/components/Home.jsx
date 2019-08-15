import React, { Component } from 'react';
import Categories from './Categories';
import {Route, Link} from 'react-router-dom'
import Restaurants from './Restaurants';
import {fetchCategories, fetchRestaurants} from '../api-helper'
// swipe cards



export default class Home extends Component {
    constructor(props){
        super(props);
        this.state={
          categories: [],
          restaurants: []
        }
      }
    
      componentDidMount = async() => {
        const categories = await fetchCategories();
        this.setState({
          categories: categories,
        })
      }
    
    
    render() {
        return (
            <div className="home">
            <h1>QuickBites</h1>
            <Link to='/categories/:cat_id/restaurants'></Link>
            <Categories 
            categories={this.state.categories}
            />
            <Route exact path="/categories/:cat_id/restaurants" render={(props)=> {
            const cat_id = parseInt(props.match.params.cat_id);
            const category = this.state.categories.find(cat => cat.id === cat_id);

            return <Restaurants
            cat_id={cat_id}
            category={category}
            />
            }

            }
            />
            </div>
        )
    }
}
