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
                <h3>Stuck on where to grab lunch? Look no further</h3>

                <Link className="home-link" to='/categories'>Enter Site</Link>
                
                

            </div>
        )
    }
}

export default TitlePage;