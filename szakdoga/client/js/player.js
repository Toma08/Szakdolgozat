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


const mainDiv = document.querySelector(".main-div");
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
    document.querySelector('select').addEventListener('change',myFilter)
    let c=""
    audioSources=[]
    let content = ""
    
    

   
                
  

        for(let obj of data){

           
            
            //console.log(obj.name);
          audioSources.push(new Audio(obj.url))
          content += `
  
                          <div class="nav2 col-lg p-0  ">
                          
                              <div class="box ">
                                  <div class="imgdiv">
                                      <img src="${obj.cpic} ">
                                      +<div class="Scriptcontent">
                                          <div class="audio-player" style="margin: 0 auto">
                                              <div class="timeline">
                                                  <div class="progress"></div>
                                              </div>
                                              <div class="controls">
                                                  <div class="play-container">
                                                      <div class="toggle-play play"></div>
                                                  </div>
                                                  <div class="time">
                                                      <div class="current">0:00</div>
                                                      <div class="divider">/</div>
                                                      <div class="length"></div>
                                                  </div>
                                                  <div class="name">Music Song</div>
                                                  <div class="volume-container">
                                                      <div class="volume-button">
                                                          <div class="volume icono-volumeMedium"></div>
                                                      </div>
                                                      <div class="volume-slider">
                                                          <div class="volume-percentage"></div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="play">
                                      <p id="namee">Name: ${obj.name}</p>
                                      <p id="genree" > Genre: ${obj.genre}</p>
                                  </div>
                              </div>
                          </div>

                          
                      `
                     
        }
        
       
        mainDiv.innerHTML = content
      
        

   
}

function myFilter(e) {
    //console.log(e.target.value)
    c=e.target.value
    console.log(c);
    if(c != "")
        fetch('../server/genre.php?cgenre='+c)
        .then(resp=>resp.json())
        .then(data=>{
            for (let index = 0; index < audioSources.length; index++) {
                audioSources[index].pause() // audio leallitas
            }
        console.log(data)
            feltolt(data);
            setupContols()

            
        
        })
    

    } 

async function loadData(data){
    //3.
    feltolt(data)
    
    //4.
    setupContols()
}



/*const audioSources = [
  new Audio("https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/sick%20dropl.mp3?alt=media&token=da990866-d9b9-44da-93a3-9dfd928cf463"),
  new Audio("https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/cheap%20melody.mp3?alt=media&token=b8eb7b02-80a4-4666-9237-80a1646c75dc"),
  new Audio("https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/groovy%20bass%20%20drop.mp3?alt=media&token=00419edc-5951-4a4c-9be8-7d10e945f7b2"),
  new Audio("https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/ghost%20elozetes.mp3?alt=media&token=3f8fe80f-2c81-452a-9cdf-89d136bb9a7a")
]*/


function setupContols(){
    let ap = document.querySelectorAll(".audio-player");
    let toggle_play = document.querySelectorAll(".toggle-play");
    ap.forEach((audioPlayer, index) => {
    console.log(index);
    let audio = audioSources[index]
    audio.addEventListener(
        "loadeddata",
        () => {
        audioPlayer.querySelector(".time .length").textContent = getTimeCodeFromNum(
            audio.duration
        );
        audio.volume = .75;
        },
        false
    );
    
    
    //click on timeline to skip around
    const timeline = audioPlayer.querySelector(".timeline");
    timeline.addEventListener("click", e => {
        console.log("");
        const timelineWidth = window.getComputedStyle(timeline).width;
        const timeToSeek = e.offsetX / parseInt(timelineWidth) * audio.duration;
        audio.currentTime = timeToSeek;
    }, false);
    
    //click volume slider to change volume
    const volumeSlider = audioPlayer.querySelector(".controls .volume-slider");
    volumeSlider.addEventListener('click', e => {
        const sliderWidth = window.getComputedStyle(volumeSlider).width;
        const newVolume = e.offsetX / parseInt(sliderWidth);
        audio.volume = newVolume;
        audioPlayer.querySelector(".controls .volume-percentage").style.width = newVolume * 100 + '%';
    }, false)
    
    //check audio percentage and update time accordingly
    setInterval(() => {
        const progressBar = audioPlayer.querySelector(".progress");
        progressBar.style.width = audio.currentTime / audio.duration * 100 + "%";
        audioPlayer.querySelector(".time .current").textContent = getTimeCodeFromNum(
        audio.currentTime
        );
        if(progressBar.style.width == "100%"){
            playBtn.classList.remove("pause");
            playBtn.classList.add("play");
            audio.pause();
        }
    }, 500);
    
    //toggle between playing and pausing on button click
    const playBtn = audioPlayer.querySelector(".controls .toggle-play");
    playBtn.addEventListener(
        "click",
        () => {
        if (audio.paused) {
            // leallit az osszes audiot es visszaallitja a gomb ikonjat leallitott helyzetbe
            for (let index = 0; index < ap.length; index++) {
                audioSources[index].pause() // audio leallitas
                toggle_play[index].classList.remove("pause"); // gomb visszaallitasa
                toggle_play[index].classList.add("play"); // gomb visszaallitasa
            }
            //beallitja lejatszasra ay ikont es elinditja az audiot
            playBtn.classList.remove("play");
            playBtn.classList.add("pause");
            audio.play();
        } else {
            playBtn.classList.remove("pause");
            playBtn.classList.add("play");
            audio.pause();
        }
        },
        false
    );
    
    audioPlayer.querySelector(".volume-button").addEventListener("click", () => {
        const volumeEl = audioPlayer.querySelector(".volume-container .volume");
        audio.muted = !audio.muted;
        if (audio.muted) {
        volumeEl.classList.remove("icono-volumeMedium");
        volumeEl.classList.add("icono-volumeMute");
        } else {
        volumeEl.classList.add("icono-volumeMedium");
        volumeEl.classList.remove("icono-volumeMute");
        }
    });
    
    //turn 128 seconds into 2:08
    function getTimeCodeFromNum(num) {
        let seconds = parseInt(num);
        let minutes = parseInt(seconds / 60);
        seconds -= minutes * 60;
        const hours = parseInt(minutes / 60);
        minutes -= hours * 60;
    
        if (hours === 0) return `${minutes}:${String(seconds % 60).padStart(2, 0)}`;
        return `${String(hours).padStart(2, 0)}:${minutes}:${String(
        seconds % 60
        ).padStart(2, 0)}`;
    }
    })
}