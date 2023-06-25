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
    <div class="field">
        <p class="control has-icons-left has-icons-right">
            <input class="input" type="email" placeholder="Email">
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
            <input class="input" type="password" placeholder="Password">
            <span class="icon is-small is-left">
          <i class="fas fa-lock"></i>
        </span>
        </p>
    </div>
    <div class="field">
        <p class="control">
            <button id="login_btn" onclick="userLogin()" class="button is-success">
                Login
            </button>
        </p>
    </div>
</div>
</body>
</html>
<script>
    function userLogin(){
        let login_btn = document.getElementById("login_btn");
        login_btn.addEventListener("click",(event)=>{
            alert(1)
        })
    }
</script>