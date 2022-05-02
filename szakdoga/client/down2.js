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
          content += `
                        <div class="nav23 col-lg p-0">
                          <div id="imgdiv" class="card " style="width: 15rem;  ">
                              <img src="${obj.cpicurl}" class="card-img-top" alt="...">
                              <div id="play"  class="card-body rounded" style="background-color: rgb(26, 26, 26); height: 6rem;">
                                <center> <h5 class="card-title  " style="color: aliceblue;">${obj.name}</h5></center>
                                <center><a  href="${obj.zipurl}" class="btn btn-primary" style="margin:0px auto;">Download</a></center>
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

