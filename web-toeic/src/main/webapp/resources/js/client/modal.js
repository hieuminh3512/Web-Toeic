//selecting all required elements
const start_btn = document.querySelector(".start_btn button");
const info_box = document.querySelector(".info_box");
const exit_btn = info_box.querySelector(".buttons .quit");
const continue_btn = info_box.querySelector(".buttons .continue");
const result_box = document.querySelector(".result_box");



// if startQuiz button clicked
start_btn.onclick = ()=>{
    info_box.classList.add("activeInfo"); //show info box
}

// if exitQuiz button clicked
exit_btn.onclick = ()=>{
    info_box.classList.remove("activeInfo"); //hide info box
}

// if continueQuiz button clicked
continue_btn.onclick = ()=>{
    info_box.classList.remove("activeInfo"); //hide info box
    showResult(); //calling showResult function
}



const restart_quiz = result_box.querySelector(".buttons .restart");
const quit_quiz = result_box.querySelector(".buttons .quit");



// if quitQuiz button clicked
restart_quiz.onclick = ()=>{
    window.location.reload(); //reload the current window
}

quit_quiz.onclick = ()=>{
    result_box.classList.remove("activeResult") //reload the current window
}




function showResult(){
    info_box.classList.remove("activeInfo"); //hide info box
    result_box.classList.add("activeResult"); //show result box



}
