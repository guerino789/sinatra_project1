Specifications for the Sinatra Assessment
Specs:

 X Use Sinatra to build the app
    Used Sinatra framework to build a web app using  "get" and "post" methods.

 X Use ActiveRecord for storing information in a database
    Using ActiveRecord Migration I was able to create tables to create a database. 

 X Include more than one model class (e.g. User, Post, Category)
    In my application I have two modles a collections model and a users model.

 X Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    In users model, user has_many relationships to a collection.

 X Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    In collection model, a collection has a belongs_to relationship with user.

 X Include user accounts with unique login attribute (username or email)
    Users account is unique to them using user.authenticate provided by ActiveRecord. 
    
 X Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    Using "get" and "post" methods app has the abilty to Creating, Reading, Updating and Destroying.

 X Ensure that users can't modify content created by other users
    By inserting logic into 'collecitons/:id' user is unable to modify content by other users.

 X Include user input validations
    User can not login if input is invalid 

 BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
 Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
 
Confirm

 You have a large number of small Git commits
 Your commit messages are meaningful
 You made the changes in a commit that relate to the commit message
 You don't include changes in a commit that aren't related to the commit message