
<div id="particles-js">
<div class="form-box ">

        <div class="button-box">
            <div id="btn"></div>
            <button type="button" class="csuszi-btn" onclick="login()">Log in</button>
            <button type="button" class="csuszi-btn" onclick="register()">Register</button>
        </div>
        <form id="login" class="input-group">
            <input type="text" class="input-be" placeholder="Username" name="username" required>
            <input type="password" class="input-be" placeholder="Password" name="password" required>
            <div class="d-flex">
               
            </div>
            <button type="submit" class="submit-btn" onclick="loginJS(event)">Log in</button>
        </form>
        <div class="msg"></div>
        <form id="register"class="input-group registerform">
            <input name="username" type="text" class="input-be" placeholder="Username" onblur="checkUsername(this)" required>
            <input name="email" type="email" class="input-be" onblur="checkEmail(this)" placeholder="Email" required>
            <input name="password" type="password" class="input-be" placeholder="Password" required>
            <button type="submit" class="submit-btn" onclick="registerFc(event)" >Register</button>
        </form>
    </div>
    
    </div>

    <aside>
     <section>
         <footer class="footer-bottom">
             <div style="height: 200px;" id="bottom" class="footer-bottom"></div>
             <p>copyright &copy;2022 Tamas Toth.  </p>
         </footer>
     </section>
 </aside>
   <script>


/*function checkUsername(obj){
        console.log("check",obj.value);
        const formData=new FormData()
        formData.set('type','checkUsername')
        formData.set('username',obj.value)
        fetch('../server/auth.php',{method:"POST",body:formData})
            .then(resp=>resp.text())
            .then(data=>console.log("szerverrol",data))

}*/
   
    function loginJS(e){
        e.preventDefault()
        const formData=new FormData(document.querySelector('#login'))
        formData.set('type','login')
        fetch('../server/auth.php',{method:"POST",body:formData})
            .then(resp=>resp.text())
            .then(data=>{console.log(data)
              if(data) {
                location.href="index.php"
                be=true;
                //console.log(data);
                
              }else{
              
                document.querySelector('.msg').innerHTML='<div class=" msg alert alert-danger" >Hibás felhasználónév/jelszó!</div>'
              }
            })
            fetch('../music.php',{method:"POST",body:formData})
            .then(resp=>resp.text())
            .then(data=>{console.log(data)
    })}



       function registerFc(e){
           e.preventDefault();
        const formData=new FormData(document.querySelector('.registerform'))
        formData.set('type','register')
        for(let obj of formData){
           console.log(obj);
        }
           
       fetch('../server/auth.php',{method:"POST",body:formData})
            .then(resp=>resp.text())
            .then(data=>{
                if(data=='1'){
                    location.href="index.php?program=./cs/logreg.php"
                    alert("Succesful registration");
                }
                console.log(data)})

        
    }

    function checkUsername(obj){
        console.log("check",obj.value);
        const formData=new FormData(document.querySelector('form'))
        formData.set('type','checkUsername')
        formData.set('username',obj.value)

        for(let obj of formData){
           console.log(obj);
        }
       
           
        fetch('../server/auth.php',{method:"POST",body:formData})
            .then(resp=>resp.text())
            .then(data=>{
              console.log(data? "ok" :"hiba")
              if(!data) {
                document.querySelector('.msg').innerHTML='<div class=" msg alert alert-danger" >Foglalt felhasználónév </div>'
                
              }else{
                document.querySelector('.msg').innerHTML=''
              }
                
             
                
    })}
    function checkEmail(obj){
        console.log(obj.value);
        const formData=new FormData(document.querySelector('form'))
        formData.set('type','checkEmail')
        formData.set('email',obj.value)
       
           
        fetch('../server/auth.php',{method:"POST",body:formData})
            .then(resp=>resp.text())
            .then(data=>{
              console.log(data? "ok" :"hiba")
              if(!data) {
                document.querySelector('.msg').innerHTML='<div class=" msg alert alert-danger" >Foglalt email cím </div>'
                
              }else{
                document.querySelector('.msg').innerHTML=''
              }
                
             
                
    })}
   </script>

<script>
      /*
      */
     
        let a=document.getElementById("login");
        let b=document.getElementById("register");
        let c=document.getElementById("btn");
        const x = window.matchMedia("(max-width: 426px)")
        
      register(x) // Call listener function at run time
      login(x) // Call listener function at run time
      x.addListener(register) // Attach listener function on state changes
      x.addListener(login) // Attach listener function on state changes
        

      function login(){
          if(x.matches){
            a.style.left="23px"
            b.style.left="450px"
            c.style.left="0px"
          }else{
            a.style.left="65px"
            b.style.left="450px"
            c.style.left="0px"
          }
            
           
        }

       function register(){

          if(x.matches){
            a.style.left="-400px"
            b.style.left="23px"
            c.style.left="120px"
          }else{
            a.style.left="-400px"
            b.style.left="65px"
            c.style.left="120px"
          }
            
            
        }

       

        

      

    </script>

    <script src="cs/particles.js">  </script>
    <script src="cs/app.js">  </script>