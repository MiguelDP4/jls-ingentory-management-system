# Inventory Management System

This is a coding interview assessment created for JSL Trading Co. It's an inventory management system. The data in the application was provided by the interviewer.

## Built With

Ruby on Rails

## How To Deploy

- Make sure your system has a database user with name 'railsdb'. The password should be saved in an environment variable called 'RAILSDB_DATABASE_PASSWORD'.

- Create the database using the following command:

```
$ rails db:create db:migrate db:seed
```
You need to seed the database if you want to have the database information. There's a .csv file in the repository, used to generate de data.

- Start the rails server
```
$ rails server
```

## Author

👤 **Miguel Dubois**

- Github: [@MiguelDP4](https://github.com/MiguelDP4)
- Twitter: [@Mike_DP4](https://twitter.com/Mike_DP4)
- LinkedIn [Miguel Dubois](https://www.linkedin.com/in/miguel-angel-dubois)

## Live Demo

You can check a demo of the code functioning in [this link](https://jls-inventory-manager.herokuapp.com/) .

## Features

- The user can check the core products in the database
- When the user clicks on a core product, a detail page is rendered.
- From the detail page, the user can read the different locations where the product is stored, if any.
- If the user is logged in, they can modify the quantity of product stored in a specific location.
- Error is shown if the user tries remove more items than there are in the location. No negative numbers are permitted.
- The user can filter products in the product page by typing the internal name (or part of it) in the search bar and clicking on the search button.
- The user management system is only used for the editing of the product amounts in the locations. The user needs to create an account, but credentials are not confirmed by email, so anyone can test the functionality.