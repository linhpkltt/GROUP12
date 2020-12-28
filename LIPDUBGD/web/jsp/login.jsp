<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <style>
            * {
                padding: 0px;
                margin: 0px;
                font-family: sans-serif;
                box-sizing: border-box;
            }
    
            .container {
                width: 100%;
                max-width: 1280px;
                margin-top: 100px;
                margin-left: auto;
                margin-right: auto;
            }
   
    
            body {
                /* background-color: #dddddd; */
                background-image: url('../images/background.jpg');
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
                min-height: 300px;
                padding: 7.5px 15px;
                height: 100vh;
            }
    
            
    
            h1 {
                color: #da9d18;
                font-size: 20px;
                margin-bottom: 30px;
            }
    
            .login-form {
    
                width: 100%;
                max-width: 420px;
                margin: 20px auto;
                color: white;
                background-color: rgba(0, 0, 0, 0.5);
                padding: 15px;
                border: none;
                border-radius: 10px;
            }
    
            .form-group {
                margin-bottom: 10px;
                margin-top: 10px;
    
    
            }
    
            .form-group input[type='text'] {
                margin-top: 10px;
                padding: 7.5px 15px;
                background-color: rgba(116, 113, 113, 0.5);
                width: 100%;
                border: 1px solid #cccccc;
                outline: none;
                font-size: 16px;
                display: inline-block;
                height: 33px;
                color: #ece2e2;
            }
       
    
            .form-group button {
                text-align: center;
                margin-top: 30px;
                padding: 7.5px 15px;
                border-radius: 2px;
                background-color: #009999;
                color: #ffffff;
                border: none;
                outline: none;
            }
        </style>
    </head>
    
    
    <div style="color: #ee3148">${messs}</div> 
    <body>
        <div class="container">
            <div class="login-form">
                <form action="${pageContext.request.contextPath}/admin/login.htm" method="post">
                    <H1>Login</H1>
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <br>
                        <input type="text" class="form-control" name="userName" id="" placeholder="Enter username">
                    </div>
                    <div class="form-group">
                        <label for="email">Password:</label>
                        <br>
                        <input type="password" class="form-control" name="password" id="" placeholder="Enter password"
                        style=" margin-top: 10px; padding: 7.5px 15px;
                        background-color: rgba(116, 113, 113, 0.5);
                        width: 100%;
                        border: 1px solid #cccccc;
                        outline: none;
                        font-size: 16px;
                        display: inline-block;
                        height: 33px;
                        color: #ece2e2;">
                    </div>
                    <div class="form-group button">
                        <button type="submit" class="btn btn-success"> Login</button>
                    </div>
                </form>
        </div>
        </div>
    </body>
</html>