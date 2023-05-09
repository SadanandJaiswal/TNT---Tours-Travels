
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="admin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>TNT | Hotels</title>
    </head>
    <body>
        <div class="body">
        <div class="sidemenu">
                
                <div class="admin_profile">
                  
                    <img src="b1.jpg" alt="">
                    <h5>Admin</h5>
                  
                </div>
                <nav class="nav">
                    <a href="Dashboard.php" ><li class="li"><span><i class="fa fa-th-large"></i> </span>Dashboard</li></a>
                    <a href="RegisteredUser.php"><li class="li"><span><i class="fa fa-users"></i> </span>Registered Usesr</li></a>
                    <a href="hotels.php"><li class="li active"><span><i class="fa fa-hotel"></i> </span>Hotels</li></a>
                    <a href="placePackage.php"><li class="li"><span><i class="fa fa-birthday-cake"></i> </span>Places (packages)</li></a>
                    <a href="Booking.php"><li class="li"><span><i class="fa-solid fa-ticket"></i></span> Booking</li></a>
                    <a href="flight.php"><li class="li"><span><i class="fa-solid fa-plane"></i></span> Flight</li></a>
                    <a href="train.php"><li class="li"><span><i class="fa-solid fa-train"></i></span> Train</li></a>
                    <a href="contactUs.php"><li class="li"><span><i class="fa-solid fa-train"></i></span> contact Us</li></a>
                    <a href="transaction.php"><li class="li"><span><i class="fa-solid fa-money-bill-wave"></i></span> Transaction</li></a>
                </nav>
    
    
            </div>
            <div class="rightframe">
                <?php


                    $conn2  = mysqli_connect('localhost','root','','travel_website');

                    if(!$conn2){
                        echo "unable to connect to db";
                    }

                    echo " <center><h3>Hotels</h3></center>";
                    $sql="SELECT * FROM `hotels`";

                    $res=mysqli_query($conn2,$sql);

                    echo '<center><table border=2 cellspacing=0>
                    <tr><th>Hotel ID </th><th>Name</th><th>Location</th><th>state</th><th>price</th><th>star</th></tr>';



                    while($result=mysqli_fetch_assoc($res))
                    {
                        echo "<style>
                            .rightframe a{
                                color:blue;
                            }
                        </style>";
                        echo '<tr>
                        <td>'.$result['hotel_id'].'</td>
                        <td>'.$result['name'].'</td>
                        <td>'.$result['location'].'</td>
                        <td>'.$result['state'].'</td>
                        <td>'.$result['price'].'</td>
                        <td>'.$result['star'].'</td>    
                     
                        </tr>';
                    }

                    echo '</table></center><br><br> ';


                    // $sql="SELECT * FROM `tbltransacdetail`;";

                    // $result=mysqli_query($conn, $sql);

                    // while($row=mysqli_fetch_assoc($result)){
                    //     echo ".$row['detail_id']." ".$row['transac_code']." ".$row['date'].";
                    // }

                ?>
            </div>
        </div>
    </body>
    </html>