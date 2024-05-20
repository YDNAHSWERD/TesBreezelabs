document.addEventListener('DOMContentLoaded', function() {
    fetch('session.php')
    .then(response => response.json())
    .then(data => {
        if (data.loggedIn) {
            fetch(`get_user.php?id=${data.userId}`)
            .then(response => response.json())
            .then(userData => {
                document.getElementById('username').textContent = userData.username;
                document.getElementById('fullname').textContent = userData.fullname;
                // Add more fields as necessary
            });
        } else {
            window.location.href = 'login.html';
        }
    });
});
