<?php
session_start();

// Check if the user is a doctor and logged in
if (isset($_SESSION['user']) && $_SESSION['usertype'] == 'd' && isset($_SESSION['doctor_id'])) {
    include("connection.php"); // Corrected path (same directory as logout.php)
    date_default_timezone_set('Asia/Manila');
    
    $doctor_id = $_SESSION['doctor_id'];
    $time_out = date('Y-m-d H:i:s'); // Real-time logout timestamp (e.g., "2025-04-01 15:16:00" for 3:16 PM)

    // Update the most recent open attendance record with the exact logout time
    $stmt = $database->prepare("UPDATE doctor_attendance 
                               SET time_out = ? 
                               WHERE doctor_id = ? 
                               AND time_out IS NULL 
                               ORDER BY time_in DESC 
                               LIMIT 1");
    if ($stmt === false) {
        error_log("Prepare failed: " . $database->error);
    } else {
        $stmt->bind_param("si", $time_out, $doctor_id); // "s" for string (time_out), "i" for integer (doctor_id)
        $stmt->execute();
        $affected_rows = $stmt->affected_rows;
        if ($affected_rows > 0) {
            error_log("Successfully updated time_out for doctor_id $doctor_id at $time_out");
        } else {
            error_log("No open attendance record found for doctor_id $doctor_id to update time_out at $time_out");
        }
        $stmt->close();
    }
    $database->close();
}

// Clear session data
$_SESSION = array();
if (isset($_COOKIE[session_name()])) {
    setcookie(session_name(), '', time() - 86400, '/');
}
session_destroy();

// Redirect to login page
header('Location: /Ginhawa/landing.html');
exit;
?>