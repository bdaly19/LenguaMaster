
const totalLessons = 5;

document.addEventListener('DOMContentLoaded', async function() {
    const userId = localStorage.getItem('user');
    await fetchProgress(userId);
});

async function fetchProgress(userId) {
    try {
        const response = await fetch('http://localhost:3000/progress?userid=' + userId, {
            method: 'GET',
            headers: {
            'Content-Type': 'application/json'
 }
});
        if (!response.ok) {
            throw new Error('Network response was not ok');
}
        const data = await response.json();
        console.log('Fetched progress:', data);
        showProgress(data);
    } catch (error) {
        console.error('Error fetching progress:', error);
        return [];
     }
}

function showProgress(data) {
    const lessonsCompleted = parseInt(data[0].count);
    const completionPercentage = (lessonsCompleted / totalLessons) * 100;
    console.log('Completion Percentage:', completionPercentage);

    const progressBar = document.getElementById('progress-bar');
    const overallProgress = document.getElementById('overall-progress');
    const lessonsCompletedText = document.getElementById('lessons-completed');

        progressBar.style.width = completionPercentage + '%';
        overallProgress.textContent = completionPercentage + '%';
        lessonsCompletedText.textContent = lessonsCompleted;
}

async function completeLesson(userId, lessonId, completionStatus, score) {
   try {
        const response = await fetch('http://localhost:3000/progress', {
            method: 'POST',
            headers: {
            'Content-Type': 'application/json'
        },
             body: JSON.stringify({
             userID: userId,
             lessonID: lessonId,
             completionStatus: completionStatus,
             score: score
             })
 });
        if (!response.ok) {
            throw new Error('Network response was not ok');
 }
        const data = await response.json();
        console.log('Progress updated:', data);
        await fetchProgress(userId); // Fetch updated progress
        alert('Lesson Complete');
        window.location.reload(); // Reload the page to reflect changes
    } catch (error) {
        console.error('Error updating progress:', error);
 }
}