import React from 'react';
import {Route, Link} from 'react-router-dom'
import {withRouter} from 'react-router-dom';
import CreateCategories from './CreateCategories';

class Categories extends React.Component{
    render(){
        return(
            <div className="all-categories">
                {
                    this.props.categories.map((cats) => (
                        <div key={cats.id}
                        onClick={()=>
                            this.props.history.push(`/categories/${cats.id}/restaurants`)
                        }>
                            <p>{cats.name}</p>
                        </div>
                    ))
                }
                <CreateCategories />
            </div>    
        )
    }
}

export default withRouter(Categories);