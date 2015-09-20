<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration</title>
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-min.css">
    <link rel="stylesheet" href="http://purecss.io/combo/1.18.13?/css/layouts/marketing.css">
    <link rel="stylesheet" href="main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="main.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Lato:300|Roboto' rel='stylesheet' type='text/css'>
</head>
<body>
    <h1>Quarch</h1>
    <form method="POST" action="registration.jsp">
        <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2" id="header">Sign up here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" class="buttons" /></td>
                        <td><input type="reset" value="Reset" class="buttons"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" id="bottom">
                            Already registered? <div class="svg-wrapper">
                                <svg height="30" width="125" xmlns="http://www.w3.org/2000/svg">
                                    <rect id="shape" height="30" width="125" />
                                    <div id="text">
                                        <a href="index.jsp"><span></span>Log in</a>
                                    </div>
                                </svg>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </center>
    </form>
</body>
</html>

<style>
    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
        background-position: center;
        overflow-x: hidden;
        font-family: 'Lato','Century Gothic',sans-serif;
        background-color: #455A64;
        font-weight: bold;
        color:white;
    }

    #header {
        padding-top: 10px;
        padding-bottom: 10px;
    }

    * {
        transition: 1s all ease;
        color: white;
    }

    table {
        margin-top: 10em;
        border: 1px solid #455A64;
    }

    span {
        position: absolute;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
    }

    .buttons {
        color: white;
        background-color: #455A64;
        border: none;
        font-weight: bolder;
    }

    .buttons:hover {
        background-color:#526c79;
    }

    #bottom {
        text-align:center;
        padding-top: 10px;
        padding-bottom: 10px;
    }

    .svg-wrapper {
        margin-left: 8px;
        margin-top: 0;
        position: relative;
        width: 125px;
        height: 30px;
        display: inline-block;
    }

    #shape {
        stroke-width: 4px;
        fill: transparent;
        stroke: #E8CD15;
        stroke-dasharray: 85 400;
        stroke-dashoffset: -174;
    }

    #text {
        margin-top: -25px;
        text-align: center;
    }

        #text a {
            color: white;
            text-decoration: none;
            font-weight: 600;
        }

    .svg-wrapper:hover #shape {
        stroke-dasharray: 50 0;
        stroke-width: 3px;
        stroke-dashoffset: 0;
        stroke: #06D6A0;
    }

    td {
        padding-top: 4px;
        padding-bottom: 4px;
    }

    h1 {
        text-align: center;
        font-weight: bolder;
        font-size: 3.5em;
        margin-top: 2em;
        margin-bottom: -2em;
        color:white;
        font-weight: 900;
    }
</style>
