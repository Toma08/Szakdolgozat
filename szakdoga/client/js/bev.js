const mainDiv1 = document.querySelector(".main-div");
//1
fetch('../server/coverpic.php')
.then(resp=>resp.json())
.then(data=>{
  
  console.log(data)
  //2.
  loadData(data)

})




function feltolt(data){
    
    let content = ""

    
      for(let obj of data){
          console.log(obj.name);
        
        content += `

        <div class="bev1" style="background-image: url("${obj.url}");">
            
        </div>
                    `
      }
      mainDiv1.innerHTML = content
}

async function loadData(data){
    //3.
    feltolt(data)
    
    //4.
    
}