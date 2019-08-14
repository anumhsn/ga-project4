import React from 'react';

class CreateCategories extends React.Component{
    render(){
        return(
            <div className="create-cat">
                <form>
                    <input type="text" name="name" placeholder="category name" />
                    <input type="submit" />
                </form>
            </div>
        )
    }
}

export default CreateCategories;