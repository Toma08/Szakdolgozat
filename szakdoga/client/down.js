// Possible improvements:
// - Change timeline and volume slider into input sliders, reskinned
// - Change into Vue or React component
// - Be able to grab a custom title instead of "Music Song"
// - Hover over sliders to see preview of timestamp/volume change

/*
1. kikerjuk adatbazisbol a zenek adatait
2. Adat betolto fuggvenyt meghivjuk
3. Zenek url-jet betoltjuk egy tombbe es legeneraljuk a html elemeket + beilleszti a main-div-be
4. A logikat hozzarendeli a lejatszokhoz

*/


const mainDiv = document.querySelector(".main-divv");
//1
fetch('../server/audio.php')
.then(resp=>resp.json())
.then(data=>{
  
  console.log(data)
  //2.
  loadData(data)

})





let audioSources=[]


function feltolt(data){
    
    let content = ""

   

   

  

        for(let obj of data){

          
            //console.log(obj.name);
          content += `
          <div class="nav23 col-lg p-0">
  

 

    
          <div id="imgdiv" class="card " style="width: 15rem;  ">
              <img src="${obj.cpic}" class="card-img-top" alt="...">
              <div id="play"  class="card-body rounded" style="background-color: rgb(26, 26, 26); height: 7rem;">
                <center> <h5 class="card-title  " style="color: aliceblue;">${obj.name}</h5></center>
                <center> <h10 class="card-title text-danger">You need to log in to get this file</h10></center>
               
                  <center><a id="le" href="index.php?program=./cs/logreg.php" class="btn btn-secondary" style="margin:0px auto;" title="You need to log in">Go to Log/Reg</a></center>
              
              </div>
            </div>
          </div>
       
        
                      `
                     
                   
        }
        
       
        mainDiv.innerHTML = content
      
        

   
}

async function loadData(data){
    //3.
    feltolt(data)
    
    //4.
    
}



/*const audioSources = [
  new Audio("https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/sick%20dropl.mp3?alt=media&token=da990866-d9b9-44da-93a3-9dfd928cf463"),
  new Audio("https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/cheap%20melody.mp3?alt=media&token=b8eb7b02-80a4-4666-9237-80a1646c75dc"),
  new Audio("https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/groovy%20bass%20%20drop.mp3?alt=media&token=00419edc-5951-4a4c-9be8-7d10e945f7b2"),
  new Audio("https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/ghost%20elozetes.mp3?alt=media&token=3f8fe80f-2c81-452a-9cdf-89d136bb9a7a")
]*/

