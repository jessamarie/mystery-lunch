# Project 2 Evaluation

## Technical Requirements
**3: Excelling**
>Includes many well-structured models, and advanced functionality such as authorization, 3rd-party API integration, or other technology not covered in class

## Creativity and Interface
**2: Performing**
>The app displays a personal spin or creative element through its written language, functionality, purpose, and/or CSS. Submission includes proof of HTML / CSS validation

## Code Quality
**3: Excelling**
>No major code quality issues, makes use of Ruby best practices appropriately, and follows techniques such as separation of concerns, abstraction, and encapsulation

## Deployment and Functionality
**2: Performing**
>Application contains no major errors, is deployed correctly, and contains a custom Heroku app name appropriate for the app.

## Planning / Process / Submission
**1: Progressing**
>App is submitted, with basic evidence of planning. Documentation exists, but lacks common areas such as setup instructions, description of application functionality and link to deployed application


### Notes:
Great job on this project! I really liked the idea of a discount mystery lunch meal. Your code is very clean. I was particularly impressed by your implementation of two distinct user-like models in Restaurant and Customer. It makes perfect sense to do so in this application, and works quite well.

I discovered and corrected a few bugs while testing your code locally. Look at the diffs from this PR to get more info on them.

Perhaps not a bug, but maybe an unintended feature. I found that a logged in Restaurant-user was allowed to create menu items for any establishment, and wasn't restricted to only create on it's own restaurant.


Consider some new/altered features:

Have each MenuItem record maintain it's own image (instead of `image.jpg`) which is kept secret in the shopping cart (show the mystery_box image) and then once the order is complete, reveal that image along with the name.

A user might want to see their past or pending orders (to verify which restaurant(s) need to visit or check the amount of cash to bring). Consider implementing an order history. This could be pretty simply made by adding an `index` to OrdersController and a corresponding view.