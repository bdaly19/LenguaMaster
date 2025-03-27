document.addEventListener('DOMContentLoaded', () => {
    fetch('/questions')
        .then(response => response.json())
        .then(data => {
            data.forEach(question => {
                console.log(`Question: ${question.questionText}`);
                question.answers.forEach(answer => {
                    console.log(`Answer: ${answer.text}, Correct: ${answer.isCorrect}`);
                });
        });
})
.catch(error => console.error('Error fetching questions:', error));
        });