import React from "react";

function Menu({eachDish}){
    console.log(eachDish)
    return(
        <>
        <ul>
        {eachDish.name}
        </ul>
        </>
    )
}

export default Menu;