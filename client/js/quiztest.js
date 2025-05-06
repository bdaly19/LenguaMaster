document.addEventListener('DOMContentLoaded', () => {
        const urlParams = new URLSearchParams(window.location.search);
        const quizTestId = urlParams.get('quiztestid'); // Correct parameter name
        console.log('QuizTest ID:', quizTestId);
    
        if (quizTestId) {
            fetch(`/questions?quiztestid=${quizTestId}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(`Network response was not ok: + ${response.statusText}`);
                    }
                    return response.json();
                })
                .then(data => {
                    console.log('Fetched data:', data); // Log the entire fetched data
                    questions = data;
                    questions.forEach(question => {
                        console.log(`Question: ${question.questiontext}`); // Log each question's text
                    });
                    currentQuestionIndex = 0;
                    userAnswers = new Array(questions.length).fill(null); // Initialize userAnswers array
                    displayQuestion();
                })
                .catch(error => console.error('Error fetching questions:', error));
        } else {
            console.error('QuizTest ID is null');
        }
    });
    