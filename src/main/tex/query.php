<?php
    $sql="SELECT * FROM user WHERE name='$uname'";
    $result=mysql_query($sql);
?>

<?php
    $sql="SELECT * FROM user WHERE name='blah';
        UPDATE user SET password='simple'";
    $result=mysql_query($sql);
?>
