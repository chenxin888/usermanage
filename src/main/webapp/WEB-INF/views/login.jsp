<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>--用户登录--</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <link href="/css/signin.css" rel="stylesheet">
         <script src="/js/jquery-3.1.1.min.js"></script>

      </head>
      <body>
        <div class="container">
          <form class="form-signin" role="form">
            <h2 class="form-signin-heading">用户登录</h2>
            <input type="email" class="form-control" placeholder="Email address" required autofocus>
            <input type="password" class="form-control" placeholder="Password" required>
            <div class="checkbox">
              <label>
                <input type="checkbox" value="remember-me"> Remember me
              </label>
            </div>
            <button id="submit"class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
          </form>
        </div>
      </body>
    </html>
