<?php

session_start();
//include ('../admin/connection.php');

$con = mysqli_connect('localhost','root','','kinabalu5');
if(mysqli_connect_errno())
{
    echo "database connection error" . mysqli_connect_error();
}
$update=false;
$id="";
$username="";
$email="";
$user_type="";
$password="";

$phone_num="";

echo "it works<br><br>";

// This is for deleting the accounts in Admin side
//Deleting records           
if(isset($_GET['delete'])){
    $id=$_GET['delete'];
    echo "it works<br><br>";

    // Get all the query from all the databases
    $query1 = "SELECT * FROM admin_account WHERE user_type='admin' LIMIT 1";
    $query2 = "SELECT * FROM hiker_account WHERE user_type='hiker' LIMIT 1";
    $query3 = "SELECT * FROM sagent_account WHERE user_type='sales agent' LIMIT 1";
    $query4 = "SELECT * FROM bagent_account WHERE user_type='booking agent' LIMIT 1";
    $query5 = "SELECT * FROM mguide_account WHERE user_type='mountain guide' LIMIT 1";



    $results1 = mysqli_query($con, $query1);
    $results2 = mysqli_query($con, $query2);
    $results3 = mysqli_query($con, $query3);
    $results4 = mysqli_query($con, $query4);
    $results5 = mysqli_query($con, $query5);



    if(mysqli_num_rows($results1) == 1){ //admin found
        echo "it works<br><br>";
        $chosenAdmin= mysqli_fetch_assoc($results1);

        if($chosenAdmin['user_type'] == 'admin'){
            $query="DELETE FROM admin_account WHERE adminID=?";
            $stmt=$con->prepare($query);
            $stmt->bind_param("i",$id);
            $stmt->execute();
    
            header('location:../checkAdmin.php');
            $_SESSION['response']="Successfully Deleted!";
            $_SESSION['res_type']="danger";
        }


    // }
    // if(mysqli_num_rows($results2) == 1){// hiker found
    //     echo "it works<br><br>";
    //     $chosenHiker= mysqli_fetch_assoc($results2);

    //     if($chosenHiker['user_type'] == 'hiker'){
    //         $query="DELETE FROM hiker_account WHERE hikerID=?";
    //         $stmt=$con->prepare($query);
    //         $stmt->bind_param("i",$id);
    //         $stmt->execute();
    
    //         header('location:../checkHiker.php');
    //         $_SESSION['response']="Successfully Deleted!";
    //         $_SESSION['res_type']="danger";
    //     }


    // }else{
    //     echo "Something is wrong";
    //     header('location:../checkHiker.php');
    //     echo "<h1> Delete unsuccessful </h1>";

    // }
    
    
    // if(mysqli_num_rows($results3) == 1){// sales agent found
    //     echo "it works<br><br>";
    //     $chosenSagent = mysqli_fetch_assoc($results3);

    //     if($chosenSagent['user_type'] == 'sales agent'){
    //         $query="DELETE FROM sagent_account WHERE sAgent_ID=?";
    //         $stmt=$con->prepare($query);
    //         $stmt->bind_param("i",$id);
    //         $stmt->execute();
    
    //         header('location:../checkSagent.php');
    //         $_SESSION['response']="Successfully Deleted!";
    //         $_SESSION['res_type']="danger";
    //     }


    // }else{
    //     echo "Something is wrong";
    //     header('location:../checkSagent.php');
    //     echo "<h1> Delete unsuccessful </h1>";

    // }

    
    // if(mysqli_num_rows($results4) == 1){ // booking agent found
    //     echo "it works<br><br>";
    //     $chonseBagent = mysqli_fetch_assoc($results4);

    //     if($chosenBagent['user_type']=='booking agent'){
    //         $query="DELETE FROM bagent_account WHERE bAgent_ID=?";
    //         $stmt=$con->prepare($query);
    //         $stmt->bind_param("i",$id);
    //         $stmt->execute();
    
    //         header('location:../checkBagent.php');
    //         $_SESSION['response']="Successfully Deleted!";
    //         $_SESSION['res_type']="danger";
    //     }


    // }else{
    //     echo "Something is wrong";
    //     header('location:../checkBagent.php');
    //     echo "<h1> Delete unsuccessful </h1>";

    // }

    
    // if(mysqli_num_rows($results5) == 1){ // mountain guide found
    //     echo "it works<br><br>";
    //     $query="DELETE FROM mguide_account WHERE mguideID=?";
    //     $stmt=$con->prepare($query);
    //     $stmt->bind_param("i",$id);
    //     $stmt->execute();

    //     header('location:../checkMguide.php');
    //     $_SESSION['response']="Successfully Deleted!";
    //     $_SESSION['res_type']="danger";
    // }
    // else{
    //     echo "Something is wrong";
    //     header('location:../checkMguide.php');
    //     echo "<h1> Delete unsuccessful </h1>";

    // }

}

if(isset($_GET['edit'])){
    $id=$_GET['edit'];
    $query="SELECT * FROM admin_account WHERE adminID=?";
    $stmt=$con->prepare($query);
    $stmt->bind_param("i",$id);
    $stmt->execute();
    $result=$stmt->get_result();
    $row=$result->fetch_assoc();

    $id= $row['id'];
    $username= $row['username'];
    $email= $row['email'];
    /*$user= $row['user'];
    $pass= $row['pass'];*/
    $address= $row['address'];
    $phone_num= $row['phone_num'];

    
    $update=true;
}


