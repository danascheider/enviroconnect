<?php 
	$name = $_POST['name'];
	$email = $_POST['email'];
    $profile = $_POST['profile'];
    $notes = $_POST['notes'];

    $to = 'gelevanog@gmail.com';
    $subject = 'Requesting information about InviroConnect';
    $body = "Detail:<br><br>			
            Name: <strong>$name</strong><br>   
            Email: <strong>$email</strong><br>          
            Profile: <strong>$profile</strong><br>
            Comments: <strong>$notes</strong><br>           
            ";

    $headers = array(); 
	$headers[] = "MIME-Version: 1.0"; 
	$headers[] = "Content-type: text/html; charset=utf-8"; 
	$headers[] = "Subject: {$subject}"; 
	$headers[] = "X-Mailer: PHP/".phpversion();
       
    $ok = mail($to, $subject, $body, implode("\r\n", $headers));
    if($ok)
        echo '1';
    else
        echo '0';
?>