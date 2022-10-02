import React from "react";

function Menu({dishName, dishIng}){
    console.log(dishName)
    console.log(dishIng)
    return(
        <>
        <ul>
        <b>{dishName}</b>
        </ul>
        {dishIng.map((eachIng) => 
        <ul key={eachIng.id}>
            {eachIng.name}
        </ul>
        )}
        </>
    )
}

export default Menu;