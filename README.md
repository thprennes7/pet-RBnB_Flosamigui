# README

## Pet RBnB

![Ace fucking ventura](https://media.giphy.com/media/FJznB4jaJLckw/giphy.gif)

### Instructions

Open up yer **terminal** and type down the following **commands** :

- `bundle install` : Install all dependencies
- `rails db:migrate` : Migrate the database
- `rails db:seed` : Populate the database
- `rails console` : to check if everything works

### Database structure

City:

| id          | city_name |
| ----------- | --------- |
| PRIMARY KEY | STRING    |

Stroll:

| id          | name   | city_id               | dog_id               | dogsitter_id               |
| ----------- | ------ | --------------------- | -------------------- | -------------------------- |
| PRIMARY KEY | STRING | FOREIGN KEY (City.id) | FOREIGN KEY (Dog.id) | FOREIGN KEY (Dogsitter.id) |

Dog:

| id          | name   | city_id               | dogsitter_id                               |
| ----------- | ------ | --------------------- | ------------------------------------------ |
| PRIMARY KEY | STRING | FOREIGN KEY (City.id) | FOREIGN KEY (Dogsitter.id) through strolls | 


Dogsitter:

| id          | name   | city_id               | dog_id                               |
| ----------- | ------ | --------------------- | ------------------------------------ |
| PRIMARY KEY | STRING | FOREIGN KEY (City.id) | FOREIGN KEY (Dog.id) through strolls |
