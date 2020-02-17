This is my attempt to build a clone of Instagram - based on the 
Maker's Academy Instagram challenge.

This version will first be written without tests.

User Stories


(Subject to change)

```
Sign-up

As a non-registered user,
So I can start to make posts,
I'd like to see a link to sign up on the homepage

As a non-registered user,
So I can make a post,
I'd like to sign up using my email address, password, username, first name and last name

As a non-registered user,
So others can't guess my password,
I'd like the password to be valid only if it is between 6 and 10 characters

As a product owner
So as to reduce the likelihood of people creating false accounts,
The email addresses used to sign up must be valid 

As a newly registered user,
So I know I have successfully signed up,
I'd like to see the following message-  "Welcome to Agilegram (User's name)" on the homepage 

As a product owner
So as to protect the website's content
I'd like users to be redirected to the log-in page if they try to access another url before signing in
```

```
Login and logout


As a registered user
So that only I can post to my account
I'd like to be able to log in using my credentials

As a registered user
So as to prevent others from accessing my account and making posts on my behalf,
I'd like to be able to log out

```

```
Posting

As a registered user,
So I can post a picture,
I'd like to see an option to make a post

As a registered user,
So I can start to make posts,
I'd like to be directed to the posts page once I've signed in

As a registered user,
So others can find my pictures,
I'd like to be able to add hashtags to my post

As a registered user,
So I know how long ago I made a post,
I'd like to see the date and time that the post was made

As a registered user,
So I can give my posts context,
I'd like to be able to give my post a caption

As a registered user,
In addition to adding a caption to my posts,
I'd like to be able to write comments under the post

As a registered user,
So I can remove pictures I don't like,
I'd like to be able to delete posts

As a registered user,
So I can make my pictures look better,
I'd like to be able to add filters to my posts
```


Status update

I need to do the following:

Add log out functionality 
Implement picture upload functionality
Fix the issues with sign up: user currently not being taken to different page and sign up link takes users
to the users page
Implement hashtags and filters functionality



