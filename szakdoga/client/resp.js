const tglbutton=document.getElementsByClassName('toggl-buttons')[0]
const navlinks=document.getElementsByClassName('navba-links')[0]

tglbutton.addEventListener('click',()=>{
    navlinks.classList.toggle('active')
})