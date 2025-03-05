document.getElementById('submit').addEventListener('click', async function(event) {
    event.preventDefault();

    const username=document.getElementById('username').value;
    const password=document.getElementById('password').value;
    console.log('logged in');

    const response=await fetch('/login', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({username, password})
    });
    console.log('response received');
    if(response.ok) {
        const data=await response.json();
        localStorage.setItem('token', data.token);
        window.location.href='/../client/dashboard.html';
    } else {
        alert('Invalid Credentials. Please try again.');
    }
});