<?php require_once 'core/dbConfig.php'; ?>

<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device=width, initial-scale=1.0">
    <title>Players List</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 8px;
        }
    </style>
</head>
<body>
    <?php

	// $stmt = $pdo->prepare("SELECT * FROM Players WHERE id = 10");				
	// if ($stmt->execute()) {
	// 	print_r($stmt->fetch());
	// }

	// $query = "SELECT * FROM 
	// 			Singles 
	// 		    WHERE team_one_player_one
	// 		  	BETWEEN 1 AND 20
	// 		  	AND team_one_player_one= 'Fonz Cutbirth'";

	// $stmt = $pdo->prepare($query);
	// if ($stmt->execute()) {
	// 	echo "<pre>";
	// 	print_r($stmt->fetchAll());
	// 	echo "<pre>";
	// }


	// $query = "SELECT * FROM 
	// 			Players
	// 		  WHERE id = 10";

	// $stmt = $pdo->prepare($query);

	// if ($stmt->execute()) {
	// 	$userID26 = $stmt->fetch();
	// 	echo "<pre>";
	// 	print_r($userID10);
	// 	echo "<pre>";
	// }

	// $query = "UPDATE Players
	// 		  SET first_name = ?, last_name = ?
	// 		  WHERE id = 10
	// 		  ";

	// $stmt = $pdo->prepare($query);

	// $executeQuery = $stmt->execute(
	// 	["Ivan", "Duane"]
	// );

	// if ($executeQuery) {
	// 	echo "Update successful!";
	// }
	// else {
	// 	echo "Query failed";
	// }

	// $query = "DELETE FROM Players
	// 		  WHERE id = 10
	// 		  ";

	// $stmt = $pdo->prepare($query);

	// $executeQuery = $stmt->execute();

	// if ($executeQuery) {
	// 	echo "Deletion successful!";
	// }
	// else {
	// 	echo "Query failed";
	// }

	// $query = "INSERT INTO Players (player_id, member_first_name, member_last_name, email, phone_number) 
	// 	VALUES (?,?,?,?,?,?)";

	// $stmt = $pdo->prepare($query);

	// $executeQuery = $stmt->execute(
	// 	[16, 'Quillan', 'Gon', 'qgon6@spotify.com', '+52 581 520 5834'],
	// );

	// if ($executeQuery) {
	// 	echo "Query successful!";
	// }
	// else {
	// 	echo "Query failed";
	// }




    $stmt = $pdo->prepare('SELECT * FROM Players');
    $stmt->execute();
    

    $players = $stmt->fetchAll(PDO::FETCH_ASSOC);
    ?>

    <table>
        <tr>
            <th>Player Name</th>
        </tr>

        <?php foreach ($players as $row) { ?>
        <tr>
            <td><?php echo htmlspecialchars($row['member_first_name']); ?></td> 
        </tr>
        <?php } ?>
    </table>
</body>
</html>




