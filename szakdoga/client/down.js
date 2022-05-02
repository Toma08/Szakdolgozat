const mainDiv = document.querySelector(".main-divv");

fetch('../server/audio.php')
.then(resp=>resp.json())
.then(data=>{
  //console.log(data)
  loadData(data)
})

function feltolt(data){
    let content = ""
        for(let obj of data){
          //console.log(obj.name);
          content +=  `
                        <div class="nav23 col-lg p-0">
                          <div id="imgdiv" class="card " style="width: 15rem;  ">
                              <img src="${obj.cpicurl}" class="card-img-top" alt="...">
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

function loadData(data){
    feltolt(data) 
}


