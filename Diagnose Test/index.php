<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Test</title>
</head>
<body>
<p><?php
    $conn = new mysqli("localhost", "root", "", "exercise");

    if ($conn->errno == 0) {
        echo "Połączenie się udało";
    } else {
        echo "Połączenie się nie udało <br>";
        echo $conn->errno;
        exit();
    }?></p>

<?php
$result = $conn->query("SELECT * FROM Users");
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "Surname\"]}'><br>
                <input type='submit' name='update' value='Aktualizuj'>
                <input type='submit' name='delete' value='Usuń'>
                <input type='number' name='id' value='{$row['ID']}' style='opacity: 0'>
            </form>
            </section>";
    }
}

$conn->close();
?>

<form action="new.php" method="post">
    <input type="text" name="name">
    <input type="text" name="surname">
    <input type="number" name="age">
    <input type="submit" value="Dodaj">
</form>
</body>
</html>