document.addEventListener('DOMContentLoaded', () => {
    fetch('/videos')
        .then(response => response.json())
        .then(data => {
            const videoGrid=document.querySelector('.video-grid');
            data.forEach(video => {
                const iframe=document.createElement('iframe');
                iframe.width='460';
                iframe.height='315';
                iframe.src=`https://www.youtube.com/embed/${video.url}`;
                iframe.frameBorder='0';
                iframe.allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture';
                iframe.allowFullscreen=true;
                videoGrid.appendChild(iframe);
            
            });
            //videoGrid.innerHTML=html;
        })
        .catch(error => console.error('Error fetching videos:', error));
    });