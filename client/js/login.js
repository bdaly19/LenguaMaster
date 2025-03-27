document.getElementById('submit').addEventListener('click', async function(event) {
    event.preventDefault();

    const username=document.getElementById('username').value;
    const passwords=document.getElementById('password').value;
    console.log('logged in');

    const response=await fetch('/login', {
        method: 'post',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({username, passwords})
    });
    console.log('response received');
    if(response.ok) {
        const data=await response.json();
        localStorage.setItem('token', data.token);
        window.location.href='/../client/html/dashboard.html';
    } else {
        alert('Invalid Credentials. Please try again.');
    }
});