import React from 'react';

class CreateRestaurant extends React.Component{
    constructor(props){
      super(props);
      this.state={
        formData: {
          name: '',
          location: '',
          link: '',
        }
      }
    }
    handleChange = ev => {
        const {
          target: { name, value }
        } = ev;
        this.setState(prevState => ({
          formData: {
            ...prevState.formData,
            [name]: value
          }
        }));
    };

    handleSubmit = (newRest)=> {
      newRest.preventDefault();
      
    }

    createRestaurant
    render(){
        return(
            <div className="create-rest">
                <h3>Add a restaurant!</h3>
                <form onSubmit={this.handleSubmit}>
                    <input type="text" name="name" placeholder="restaurant name" onChange={this.handleChange}/>
                    <input type="text" name="location" placeholder="address" onChange={this.handleChange}/>
                    <input type="text" name="link" placeholder="website link" onChange={this.handleChange} />
                    
                    <input type="submit" />
                </form>
            </div>
        )
    }
}

export default CreateRestaurant;