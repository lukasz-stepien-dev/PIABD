<?php

$conn = new mysqli("localhost", "root", "", "exercise");

if ($conn->errno != 0) {
    echo "Połączenie się nie udało <br>";
    echo $conn->errno;
    exit();
}

if (isset($_POST['update'])) {
    if (!empty($_POST['name']) || !empty($_POST['surname'])) {
        $conn->query("UPDATE Users
                            set Name = '{$_POST["name"]}',
                                Surname = '{$_POST["surname"]}'
                            WHERE ID = '{$_POST["id"]}'");
        header('Location: index.php');
    }
}

if (isset($_POST['delete'])) {
    $conn->query("DELETE FROM Users WHERE ID = '{$_POST["id"]}'");
    header('Location: index.php');
}