import React from 'react';
import Categories from './Categories';
import {fetchCategories, fetchRestaurants} from '../api-helper'
import {Route, Link} from 'react-router-dom'
import Restaurants from './Restaurants';
import Home from './Home';
// import Try from './components/trycard';

class TitlePage extends React.Component{
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


    render(){
        return(
            <div className="title-page">
                <h1>QuickBites</h1>
                <h3>Looking for a place to eat? Look no further</h3>

                <Link to='/home'>Home</Link>
                <Link to='/categories/:cat_id/restaurants'></Link>

                <Route exact path="/home" render={()=> <Home /> } />
                <Route path="/categories/:cat_id/restaurants" render={(props)=> {
                    const cat_id = parseInt(props.match.params.cat_id);
                    const category = this.state.categories.find(cat => cat.id === cat_id);

                    return <Restaurants
                        cat_id={cat_id}
                        category={category}
                        restaurants={this.state.restaurants}
                     />
                }

            }
                />
            </div>
        )
    }
}

export default TitlePage;