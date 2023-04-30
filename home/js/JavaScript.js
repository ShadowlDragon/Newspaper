// Get all the comment forms on the page
var commentForms = document.querySelectorAll(".comment-form");

// Loop through each comment form and add an event listener to the form submit button
commentForms.forEach((form) => {
    form.addEventListener("submit", (event) => {
        // Prevent the default form submission behavior
        event.preventDefault();

        // Get the input field and value for the current form
        var commentInput = form.querySelector("input");
        var newComment = commentInput.value;

        // Find the closest comment list element relative to the current form
        var commentList = form
            .closest(".comments")
            .querySelector(".comment-list");

        if (newComment.trim() !== "") {
            // Create a new list item element with the comment content
            const newCommentItem = document.createElement("li");
            newCommentItem.innerText = newComment;

            // Add the new comment list item to the comment list for the current form
            commentList.appendChild(newCommentItem);

            // Clear the comment input field for the current form
            commentInput.value = "";
        }
    });
});


// get all the like buttons
var likeBtns = document.querySelectorAll(".like-btn");

// loop through each like button and add a click event listener
likeBtns.forEach((btn) => {
    btn.addEventListener("click", () => {
        // get the like count element for this button
        var likeCount = btn.nextElementSibling;

        // get the current count value and convert to a number
        let count = Number(likeCount.textContent);

        // toggle the "liked" class on the button
        btn.classList.toggle("liked");

        // update the count in the like count element
        if (btn.classList.contains("liked")) {
            count++;
        } else {
            count--;
        }
        likeCount.textContent = count;
    });
});

const likeBtn = document.querySelector('.like-btn');

likeBtn.addEventListener('click', function () {
    const icon = this.querySelector('i');
    icon.classList.toggle('far');
    icon.classList.toggle('fas');
});
