<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Login Page</title>

    <script>

        function validateForm() {

            let username =
                document.getElementById("username").value;

            let password =
                document.getElementById("password").value;

            let usernameRegex =
                /^[a-zA-Z0-9]+$/;

            let passwordRegex =
                /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$/;

            if (!usernameRegex.test(username)) {

                alert(
                  "Username must contain only letters and numbers");

                return false;
            }

            if (!passwordRegex.test(password)) {

                alert(
                  "Password must contain uppercase, lowercase, number and special character");

                return false;
            }

            return true;
        }

    </script>

</head>

<body>

<h2>Login Page</h2>

<form action="login"
      method="post"
      onsubmit="return validateForm();">

    Username:

    <input type="text"
           id="username"
           name="username"
           required>

    <br><br>

    Password:

    <input type="password"
           id="password"
           name="password"
           required>

    <br><br>

    <button type="submit">
        Login
    </button>

</form>

</body>
</html>