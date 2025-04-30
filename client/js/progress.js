document.addEventListener('DOMContentLoaded', function() {
    const totalLessons=20;
    const totalHours=50;

    let lessonsCompleted=0;
    let timeSpent=0;
    let lessonStartTime;

    function updateProgress(lessonsCompleted, timeSpent) {
        const lessonProgress=(lessonsCompleted/totalLessons)*100;
        const timeProgress=(timeSpent/totalHours)*100;
        const overallProgress=Math.min((lessonProgress+timeProgress)/2,100);

        const overallProgressElement=document.getElementById('overall-progress');
        overallProgressElement.textContent=`${overallProgress.toFixed(2)}%`;

        const progressBar=document.getElementById('progress-bar');
        progressBar.style.width=`${overallProgress}%`;

        const lessonsCompletedElement=document.getElementById('lessons-completed');
        lessonsCompletedElement.textContent=lessonsCompleted;

        const timeSpentElement=document.getElementById('time-spent');
        timeSpentElement.textContent=`${timeSpent.toFixed(2)} hours`;
    }

    function startLesson() {
        lessonStartTime=new Date();
    }

    function completeLesson() {
        const lessonEndTime=new Date();
        const timeSpentOnLesson=(lessonEndTime-lessonStartTime)/(1000*60*60);
        timeSpent+=timeSpentOnLesson;
        lessonsCompleted++;
        updateProgress(lessonsCompleted, timeSpent);
    }

    updateProgress(lessonsCompleted, timeSpent);

    document.getElementById('start-lesson').addEventListener('click', startLesson);
    document.getElementById('complete-lesson').addEventListener('click', completeLesson);
});