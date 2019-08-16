import React from 'react';
import { fetchRestaurants, deleteOneRestaurant, updateOneRestaurant } from '../api-helper';
import CreateNewRestaurant from './CreateRestaurant'
import "react-responsive-carousel/lib/styles/carousel.min.css";
import RightArrow from './arrows';
import LeftArrow from './left-arrow';

class Restaurants extends React.Component{
    constructor(props){
        super(props);
        this.state={
            restaurants: [],
            id: this.props.cat_id,
            isEditing: false,
            category_id_edit: null,
            editformData: {
                name: '',
                location: '',
                link: ''
            },
            editingId: null,
            currentIndex: 0
        }
    }

    componentDidMount = async() => {
        const restaurants = await fetchRestaurants(this.state.id);
        this.setState({
            restaurants: restaurants
        })
       
    }

    handledelete = async(cat_id, id) =>{
        await deleteOneRestaurant(cat_id, id);
        this.setState(prevState => ({
            restaurants: prevState.restaurants.filter(
              restaurant => restaurant.id !== parseInt(id)
            )
        }));
    }

    update = async(id, rest_id) => {
        const data = this.state.editformData;
        const resp = await updateOneRestaurant(id, rest_id, data);
        const restaurant = resp.data;
        this.setState(prevState=>({
            restaurants: prevState.restaurants.map(r => (r.id === restaurant.id ? restaurant : r)),
            editformData: {
              name: '',
              location: '',
              link: ''
            },
            editingId: null
          }))
    }


    edit = (id) => {
        this.setState(prevState => {
            const { name, location, link } = prevState.restaurants.find(r => r.id === id);
            return {
              editformData: { name, location, link },
              editingId: id
            };
          });
    }
    handleChange = (ev) => {
        const { target: { name, value } } = ev;
        this.setState(prevState => ({
          editformData: {
            ...prevState.editformData,
            [name]: value,
          }
        }));
      }


    render(){
        return(
          <div className="trial">
            {/* <RightArrow /> */}
          
            <div className="all-restaurants">
                
                {
                    this.state.restaurants.map((rest) => 
                    (
                        <div className="one-rest" key={rest.id}>
                            <h3 className="rest-name">{rest.name}</h3>
                            <p>{rest.location}</p>
                            {/* <img src={rest.rest_img}/> */}
                            <img src={rest.food_img}/>
                            <p>Rating: {rest.rating}</p>
                            <a href={rest.link}>{rest.link}</a>
                            <button onClick={()=>{
                                const { id } = this.props.category;
                                this.handledelete(id , rest.id)
                                }}>Delete</button>
                            
                            {/*EDIT*/}
                            <button
                            onClick={()=>{
                                this.setState({ isEditing: true, })
                                this.edit(rest.id)
                            }}>Edit</button>

                            { this.state.isEditing && (
                                <form className="formz" 
                                onSubmit={()=> {
                                        const { id } = this.props.category;
                                        this.update(id, rest.id);
                                    }}>
                                  <input 
                                    name="name" 
                                    type="text" 
                                    placeholder="name" 
                                    onChange={this.handleChange}
                                    value={this.state.editformData.name}
                                    />
                                  <input 
                                    name="location" 
                                    type="text"
                                    placeholder="location" 
                                    onChange={this.handleChange}
                                    value={this.state.editformData.location}
                                  />
                                  <input 
                                    name="link" 
                                    type="text" 
                                    placeholder="link" 
                                    onChange={this.handleChange}
                                    value={this.state.editformData.link}
                                  />

                                  <input type="submit" />
                                </form>
                              )
                            }
                            
                        </div>
                    ))
                }
                <CreateNewRestaurant 
                    category={this.props.category}
                />
            </div>
            </div>
        )
    }
}
export default Restaurants;