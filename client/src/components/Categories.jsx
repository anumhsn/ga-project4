import React from 'react';
import {Route, Link} from 'react-router-dom'
import {withRouter} from 'react-router-dom';

class Categories extends React.Component{
    render(){
        return(
            <div className="all-categories">
                {
                    this.props.categories.map((cats) => (
                        <div className="each-category" key={cats.id}
                        onClick={()=>
                            this.props.history.push(`/categories/${cats.id}/restaurants`)
                        }>
                            <p className="cat-name">{cats.name}</p>
                            <img src={cats.img}/>
                        </div>
                    ))
                }
                
            </div>    
        )
    }
}

export default withRouter(Categories);