<?php

session_start(); 


include_once '../Config/config.php';



if(isset($_POST['submit'])){


{
    
    $username=$_POST["username"];
    $password=$_POST["password"];


    $sql="select * from users where username='".$username."' AND password='".$password."' ";
    
    $result=mysqli_query($data,$sql);

    $row=mysqli_fetch_assoc($result);


    if($row["role"]=="user")
    {   
        $_SESSION['Userid'] =$row['user_id'];
        $_SESSION['role'] =$row['role'];

        $_SESSION['District'] =$row['district'];
        $_SESSION['School'] =$row['school'];



        echo $_SESSION['Userid'];
        echo $_SESSION['role'];
       

        header("location: ../user_client/nav.php?opn=dashboard");
    }

    elseif($row["role"]=="admin")
    {
        $_SESSION['Userid'] =$row['user_id'];
        $_SESSION['role'] =$row['role'];

        echo $_SESSION['Userid'];
        echo $_SESSION['role'];
      
        
        header("Location: ../user_admin/nav.php?opn=dashboard");
    }

    else
    {

        $_SESSION['status'] = " Username or Password Incorrect ";

        header("location:../index.php?e=1");
    }
}
}

?>