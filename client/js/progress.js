document.addEventListener('DOMContentLoaded', function() {
    const overallProgress=75;
    const lessonsCompleted=10;
    const timeSpent=5;

    const overallProgressElement=document.getElementById('overall-progress');
    overallProgressElement.textContent=`${overallProgress}%`;

    const progressBar=document.getElementById('progress-bar');
    progressBar.style.width=`${overallProgress}%`;

    const lessonsCompletedElement=document.getElementById('lessons-completed');
    lessonsCompletedElement.textContent=lessonsCompleted;

    const timeSpentElement=document.getElementById('time-spent');
    timeSpentElement.textContent=`${timeSpent} hours`;
});