# Project Feedback + Evaluation

Your feedback is based on the [Evaluation Rubric](https://git.generalassemb.ly/ga-wdi-exercises/project2/blob/master/evaluation.md) provided for this project.

## Technical Requirements:

> Did you deliver a project that met all the technical requirements? Given what the class has covered so far, did you build something that was reasonably complex?

Your Score: 2

**Notes:**
You met all of the technical requirements: you have 2 non-User models with an association, complete RESTful routes, some error handling, validation and flash messages, etc.

## Creativity/Interface:

> Is your user interface easy to use and understand? Does it make sense for the problem you're solving? Does your interface demonstrate creative design?

Your Score: 0

**Notes:**
The only custom styling you've added is for the alternating table rows. To bring this up, you should:

* apply styling to each view, including auth views like log-in.
* apply some creativity and design to the app. We're not expecting students to be designers, so pull ideas and inspiration from apps you've used before, from CodePen or from Collect UI.

## Code Quality:

> Did you follow code style guidance and best practices covered in class, such as spacing, modularity, and semantic naming? Did you comment your code?

Your Score: 1

**Notes:**
You're definitely off to a good start here but you should consider the following to bring your score up:

* Your HTML and CSS is not following the best practices we taught: you're using underscores in your class names, you're really only using `div`s and `p`s for your content, your class names are not semantically named
* You should use a `<table>` element for your tables with `<tr>` and `<td>`.
* You have a some variables that appear to be misspelled or at least are not semantically named (like `viewor`)


## Functionality:

> Does the scope of functionality you've built meet the minimum requirements? Do the core components of your application work without errors?

Your Score: 2

**Notes:**
You had set out to implement a lot for one week, I think where you landed in terms of functionality is a pretty good spot. If you have time, consider adding a 3rd party API (like google maps for the job sites) or building out some of the other features we discussed early on. Additionally, it looks like if I clock in and then clock out I can't clock back in? If that's because I can't clock back in on the same day, consider adding a message to that effect.

## Planning / Process / Submission:

> Is there clear evidence of planning? Is there adequate documentation?

Your Score: 0

**Notes:**
I have your ERD from when you submitted it to me at the beginning of the project. Aside from that, I can't find any evidence of planning or documentation. Did you write any user stories? What was your planning process?

There are a couple of steps you can take to bring this score up from a 0 to a 2:
* create a project on the GitHub repo and add some user stories, including some you've finished or are currently in progress
* create a `planning/` folder with your ERD, some wireframes, and/or some documentation.
* create issues in GitHub for the features you'd like to implement that describe the technical details of how those features will work and be implemented
* update the readme with set up instructions. Review [this lesson](https://git.generalassemb.ly/ga-wdi-lessons/documentation-markdown) on writing documentation for more.


