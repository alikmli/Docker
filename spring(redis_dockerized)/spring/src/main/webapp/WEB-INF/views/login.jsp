<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">    <title>Login</title>
</head>
<body>
<div class="container box">
    <form method="POST" action="/login">
        <div class="field">
            <p class="control has-icons-left has-icons-right">
                <input class="input" type="username" id="email" name="username" placeholder="Email">
                <span class="icon is-small is-left">
              <i class="fas fa-envelope"></i>
            </span>
                <span class="icon is-small is-right">
              <i class="fas fa-check"></i>
            </span>
            </p>
        </div>
        <div class="field">
            <p class="control has-icons-left">
                <input class="input" id="password" name="password" type="password" placeholder="Password">
                <span class="icon is-small is-left">
              <i class="fas fa-lock"></i>
            </span>
            </p>
        </div>
        <div class="field">
            <p class="control">
                <input type="submit" value="Login" class="button is-success"/>
            </p>
        </div>
    </form>
</div>
</body>
</html>
<script>
    function userLogin(){
        let login_btn = document.getElementById("login_btn");
        login_btn.addEventListener("click",(event)=>{
            let email = document.getElementById("email").value;
            let password = document.getElementById("password").value;
            let url = `http://localhost:7000/login/user`;


            let data = {
                email:email,
                password:password
            };
            data = JSON.stringify(data);

            let header = new Headers({
                'Content-Type': 'application/json'
            });

            let request=new Request(url,{
                method:'POST',
                headers:header,
                body:data
            });

            fetch(request)
                .then(response => {
                    console.log(response)
                });
        })
    }
</script>