## Task Challenge App.

This is a simple app with a tasks index.

You can find the setup instructions [here](CONTRIBUTING.md).

In 4 hours maximum, please complete the challenge below. Note that one can easily spend much more than 4 hours on this challenge, that’s intentional. An uncompleted challenge is not a bad one, so please submit your answer even if you don’t finish everything within 4 hours, just make sure the app still starts!

The application should fulfill the requirements below. The source code must be compressed and sent as a zip once completed.
The repo has git already initialized for version control, make sure to commit your changes! (please do not store this on a public repository)

### Clean things up first!

The app has a Kind model which is a simple model, but it has not been implemented too well, the code isn't exactly clean.
Start by cleaning the code. We want to retain functionality (see all, create, update) and also the validations: name should be at least 5 characters and the size should also be a certain amount.


### Finish the task implementation

The task implementation has been started but it's not completed. We need to be able to add a task, view a task, and edit a task. We don't want to destroy tasks though.
The task should have at least:
  * a name (required)
  * a category: this must be a dropdown list, the fixed values can be any of "development, backlog, review, administrative"
  * a delivery date & time
  * a description (required)
  * a kind: this must be another dropdown list which uses the already built kind model. (required) Note that if a kind is inactive I should not be able to select it for a new or when editing a task, but if it's already attached I should still see it.


### tasks search


When a task is created, it should appears in a tasks index list by descending order of creation. The list should present everything except the description.
On the task index view I should be able to search in **one** global search field for a task by: name, description as well as category and kind.
The goal is to have a fast performing search for large dataset (> 10,000 tasks and at least 20 Kinds)


### Dependent tasks

After a task has been added, I should be able to define a dependency to (only) one another task (note: the dependent task could be use by other tasks as their dependent).

Using JavaScript (or CoffeeScript), add a feature that **doesn't** reload the page and upon hovering over a task, highlight it's dependents visible on the screen.


Optional: looking at a task, I should be able to see the full tree of dependencies and the place of the current task in the tree.



## A few last words...

Bonus points for a nice data seed.

We encourage you to not use gems and library for the search and tree (if you get to that), where we want to see your algorithm.
We are looking for a simple, clean, elegant design, tests and all round understanding of the full stack e.g. Ruby, Rails, CSS (SCSS here but you can change that if you prefer another like pure CSS or SASS), HTML, JavaScript (or CoffeeScript).

Feel free to comment your code to explain any design decisions or other choice you've made (in particular for your search strategy). If an instruction is not clear to you, make a choice on it's interpretation and write this choice so the reviewer can follow your implementation (no need to explain the choice, just to mention what you chose).

## Have fun!
