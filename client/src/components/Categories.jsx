import React from 'react';

class Categories extends React.Component{
    render(){
        return(
            <div className="all-categories">
                {
                    this.props.categories.map((cats) => (
                        <div key={cats.id}>
                            <p>{cats.name}</p>
                            
                        </div>
                    ))
                }
            </div>    
        )
    }
}

export default Categories;