import React from "react";
import { useEffect, useState } from "react";
import Menu from "./Menu";

function Home(){

    const [dishList, setDishList] = useState([]);

    useEffect(() => {
        fetch("http://localhost:3000/dishes/")
          .then((r) => r.json())
          .then((data) => setDishList(data));
      }, []);

    //   console.log(dishList)

    return(
        <>
        {dishList.map((eachDish) => 
            <Menu key={eachDish.id} dishName={eachDish.name} dishIng={eachDish.ingredients} />
        )}
        </>
    )
}

export default Home;