<div class="form-box">
        <div class="button-box">
            <div id="btn"></div>
            <button type="button" class="csuszi-btn" onclick="login()">Log in</button>
            <button type="button" class="csuszi-btn" onclick="register()">Register</button>
        </div>
        <form id="login" class="input-group">
            <input type="text" class="input-be" placeholder="Username" required>
            <input type="text" class="input-be" placeholder="Password" required>
            <div class="d-flex">
                <input type="checkbox" class="check-box" ><span>Remember password</span>
            </div>
            <button type="submit" class="submit-btn">Log in</button>
        </form>
        <form id="register"class="input-group registerform">
            <input name="username" type="text" class="input-be" placeholder="Username" required>
            <input name="email" type="email" class="input-be" placeholder="Email" required>
            <input name="password" type="text" class="input-be" placeholder="Password" required>
            <input type="checkbox" class="check-box" ><span>I agree to the terms</span>
            <button type="button" class="submit-btn" onclick="registerFc()">Register</button>
        </form>
    </div>
    <div id="particles-js">
    </div>
   <script>
       function registerFc(){
        const formData=new FormData(document.querySelector('.registerform'))
        formData.set('type','register')
        for(let obj of formData){
           console.log(obj);
        }
           
       /fetch('../server/auth.php',{method:"POST",body:formData})
            .then(resp=>resp.text())
            .then(data=>console.log(data))
        
    }
   </script>

    <script src="cs/particles.js">  </script>
    <script src="cs/app.js">  </script>