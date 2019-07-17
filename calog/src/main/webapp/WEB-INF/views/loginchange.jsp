<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Flat HTML5/CSS3 Login Form</title>

  <link rel="stylesheet" href="../resources/css/style.css">

</head>

<body>
  <div class="login-page">
    <div class="form">
      <form class="calog">
        <h2>Please enter your personal information</h2>
      </form>
      <form class="register-form">
        <h2>Thank you for using</h2>
        <input type="password" placeholder="password" name="password" />
        <input type="password" placeholder="check Password" name="checkpassword" />
        
        <button>DELETE</button>
        <p class="message">Need a account? <a href="#">Main</a></p>
      </form>
      <form class="login-form">
        <input type="password" placeholder="password" name="password" />
        <input type="password" placeholder="check Password" name="checkpassword" />
        <input type="text" placeholder="name" name="name" />
        <input type="text" placeholder="email Address" name="email" />
        <input type="text" placeholder="phone Number" name="Phone" />
        <input type="text" placeholder="address" name="address" />
        <input type="text" placeholder="birthday" name="birthday" />
        <input type="text" placeholder="gender" name="gender" />
        <input type="text" placeholder="height" name="height" />
        <input type="text" placeholder="weight" name="weight" />
        <input type="hidden" name="bmi" value="weight/height/height*10000" />
        <button>CHANGE</button> 
        <p class="message">Need not account? <a href="#">Delete an account</a></p>
      </form>
    </div>
  </div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  <script src="../resources/js/script.js"></script>

</body>

</html>