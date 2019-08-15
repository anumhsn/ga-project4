import React from 'react';
import './App.css';
import Categories from './components/Categories';
import {fetchCategories, fetchRestaurants} from './api-helper'
import {Route, Link} from 'react-router-dom'
import Restaurants from './components/Restaurants';
import Home from './components/Home';
import Try from './components/trycard';


class App extends React.Component{
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
    return (
      <div className="App">
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

        {/* <Try /> */}
      </div>
    );
  }
  
}

export default App;
