# **Stockr**

Welcome to Stockr where you can watch the markets,
follow your favourite stocks and be informed of the latest in the business world !

#### You can get started on stocker [here](https://stockr2022.herokuapp.com/login)

New user profiles can be created using sign-up to access the platform.

Alternatively sample user credentials as below can be used:

- username : steve@ga.co
- password : chicken

## **Overview**

Stockr was built for Project 1 at SEIR-52 GA. This project presents a CRUD web application which allows users to surf stocks and the key info related to them.
Users can also create multiple watchlists to categorise the stocks they are watching. Further, the top business news from around the globe is presented to the user, so they can pick their YOLO bets wisely!!

This project was primarily built with Ruby on Rails to manage the backend routes, and the front-end views using the html.erb in combination with PostgreSQL to manage the db. The project also uses Bootstrap to manage certain aspects of styling. Stockr is currently deployed on Heroku.

## **Approach**

This project uses a MVC (Model–view–controller) approach with three models as below to manage the data all throughout the project

- User
- Stock
- Watchlist

The stock information is queried from the [BasicYahooFinance gem](https://github.com/towards/basic_yahoo_finance) by passing the stock symbol (i.e. GOOG).

The news information is queried from the [NEWS API gem](https://github.com/olegmikhnovich/News-API-ruby).

## **Features**

1. Home page - Show featured stocks and top business news headlines
2. Markets page - Show stocks which were top gainers and fallers in the trading day
3. Watchlists - Ability to create watchlists and add stocks to them to track their performance

## **Current issues/ challenges**

- Loading time of the markets page is quite high, this is happening as the top gainers and top fallers are identified based on the data fetched from the stock gem
- Currently the stocks can be added to watchlist only from the stock show page and not directly from the watchlist page, this provides a less than optimal user experience
- No feedback is provided to the user once stock is added to the watchlist
- Adaptiveness to different screen sizes is absent and causes UI issues
- Certain methods are rewritten again in different view html.erb files making the code less DRY
- The logic of class names and the CSS code needs to be reviewed and could be made more DRY

## **To Do**

- Fix UI/ UX issues reported
- Present some of the stock info in the form of charts to provide visual context to user
- Improve performance of the project
