import React from 'react';
import './App.css';
import Categories from './components/Categories';
import {fetchCategories} from './api-helper'

class App extends React.Component{
  constructor(props){
    super(props);
    this.state={
      categories: []
    }
  }

  componentDidMount = async() => {
    const categories = await fetchCategories();
    this.setState({
      categories: categories
    })
    console.log(categories);
  }
  
  render(){
    return (
      <div className="App">
        <h1>QuickBites</h1>
        <Categories 
          categories={this.state.categories}
          
        />
      </div>
    );
  }
  
}

export default App;
