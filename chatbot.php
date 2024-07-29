<?php
$servername = "localhost";
$username = "root"; // your database username
$password = ""; // your database password
$dbname = "chatbot";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to calculate similarity score (percentage)
function getSimilarityScore($str1, $str2) {
    // Normalize strings
    $str1 = strtolower(trim($str1));
    $str2 = strtolower(trim($str2));

    // Calculate Jaro-Winkler similarity score
    $similarity = similar_text($str1, $str2, $percent);
    return $percent;
}

// Function to get the best response based on similarity score
function getBestResponse($userMessage, $conn) {
    $userMessage = strtolower(trim($userMessage));
    
    // Fetch all questions from the database
    $sql = "SELECT question, answer FROM responses";
    $result = $conn->query($sql);
    
    if (!$result) {
        return "Sorry, I don't understand that.";
    }

    $bestAnswer = "Sorry, I don't understand that.";
    $highestScore = 0;

    while ($row = $result->fetch_assoc()) {
        $question = strtolower($row['question']);
        $score = getSimilarityScore($userMessage, $question);

        // Update best answer if the score is higher
        if ($score > $highestScore) {
            $highestScore = $score;
            $bestAnswer = $row['answer'];
        }
    }

    return $bestAnswer;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $userMessage = $_POST['message'];

    // Validate and sanitize user input
    if (!empty($userMessage)) {
        $response = getBestResponse($userMessage, $conn);
        echo htmlspecialchars($response);
    } else {
        echo "Please enter a message.";
    }
}

$conn->close();
?>
