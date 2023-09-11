<?php
$conn = new mysqli("localhost", "root", "", "exercise");

if ($conn->errno != 0) {
    echo "Połączenie się nie udało <br>";
    echo $conn->errno;
    exit();
}

if (!empty($_POST['name']) || !empty($_POST['surname']) || !empty($_POST['age'])) {
    $numbOfRows = $conn->query("SELECT * FROM Users")->num_rows + 1;
    $conn->query("INSERT INTO Users (ID, Name, Surname, Age) VALUES
    ($numbOfRows, '{$_POST["name"]}', '{$_POST["surname"]}', {$_POST["age"]})");
    header("Location: index.php");
} else {
    header("Location: index.php");
}
