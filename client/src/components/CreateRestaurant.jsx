import React from 'react';
import {createRestaurant} from '../api-helper';

class CreateNewRestaurant extends React.Component{
    constructor(props){
      super(props);
      this.state = {
        formData: {
          name: '',
          location: '',
          link: '',
        },
      }
    }
    handleChange = (ev) => {
      const { target: { name, value } } = ev;
      this.setState(prevState => ({
        formData: {
          ...prevState.formData,
          [name]: value,
        }
      }));
    }

    handleCreateRest = async(cat_id, data) => {
      const restaurant = await createRestaurant(cat_id, data);
      console.log(restaurant);
    }

    handleSubmit = (ev)=> {
      ev.preventDefault();
      const { id } = this.props.category;
      ev.preventDefault();

      this.handleCreateRest(id, this.state.formData);
      
    }

    render(){
        return(
            <div className="create-rest">
                <h3>Add a restaurant!</h3>
                <form onSubmit={this.handleSubmit}>
                    <input 
                      type="text" 
                      name="name" 
                      placeholder="restaurant name" 
                      onChange={this.handleChange} 
                      value={this.state.formData.name}
                      />
                    <input 
                      type="text" 
                      name="location" 
                      placeholder="address" 
                      onChange={this.handleChange}
                      value={this.state.formData.location}
                      />
                    <input type="text" 
                      name="link" 
                      placeholder="website link" 
                      onChange={this.handleChange} 
                      value={this.state.formData.link}
                       />
                    
                    <input type="submit" />
                </form>
            </div>
        )
    }
}

export default CreateNewRestaurant;