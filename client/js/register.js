document.getElementById('registerForm').addEventListener('submit', async function(event) {
    event.preventDefault();

    const username = document.getElementById('username').value;
    const passwords = document.getElementById('password').value;
    const email = document.getElementById('email').value;
    console.log('registered');

    const response = await fetch('/register', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ username, passwords, email })
    });
    console.log('response received');
    if (response.ok) {
        alert('Registration successful! You can now log in.');
        window.location.href = '/client/index.html';
    } else {
        const result=await response.json();
        alert('Registration failed: '+result.message);
    }
});