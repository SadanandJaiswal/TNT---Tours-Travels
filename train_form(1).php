<?php

   $connection = mysqli_connect('localhost','root','','book_db');

   if(isset($_POST['send'])){
      $user = $_POST['user_id'];
      $name = $_POST['name'];
      $dob = $_POST['dob'];
      $email  = $_POST['email'];
      $phone_no  = $_POST['phone_no'];
      $address = $_POST['address'];
      $city = $_POST['city'];
      $state = $_POST['state'];
      $passport_id_no = $_POST['passport_id_no'];
      $passengers = $_POST['pasengers'];
      $dep = $_POST['dep'];
      $dep_time = $_POST['dep-time']''
      $am_pm = $_POST['am_pm1'];

      $ret = $_POST['ret'];
      $ret_time = $_POST['ret-time']''
      $am_pm2 = $_POST['am_pm2'];

      $dep_form = $_POST['dep-form'];
      $city1 = $_POST['city1'];
      $destination = $destination;
      $city2 = $_POST['city2'];

      $airline = $_POST['airline'];
      $fare = $_POST['fare'];

      $request = " insert into train(user_id, name, dob, email, phone_no, address, passport_id_no, passengers, departure_date, return_date, departure_from, destination, airline, fare) 
                values('$user','$name','$dob','$email','$phone_no','$address','$passport_id_no','$passengers', '$dep','$ret','$dep_form', '$destination', '$airline', '$fare') ";
      mysqli_query($connection, $request);

      header('location:book.php'); 

   }
   else{
      echo 'something went wrong please try again!';
   }

?>