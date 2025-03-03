document.getElementById('loginForm').addEventListener('submit', async (event) => {
    event.preventDefault();

    const username=document.getElementById('username').value;
    const password=document.getElementById('password').value;

    const response=await fetch('/login', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({username, password})
    });

    if(response.ok) {
        const data=await response.json();
        localStorage.setItem('token', data.token);
        window.location.href='/../client/dashboard.html';
    } else {
        alert('Invalid Credentials. Please try again.');
    }
});