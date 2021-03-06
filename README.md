# TEAM SCORCHIO: MAKERS BnB
----------

## HOW TO USE

* Clone the project in GitHub (https://github.com/rachjgriff/makersBnB)
* Install gems

```console
$ bundle install
```

## HOW TO TEST

* Run rspec from the command line
```
$ rspec
```

* To run rubocop
```
$ rubocop
```

## HEADLINE SPECIFICATIONS
----------

>* Any signed-up user can list a new space.  
>* Users can list multiple spaces.  
>* Users should be able to name their space, provide a short description of the space, and a price per night.  
>* Users should be able to offer a range of dates where their space is available.  
>* Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.  
>* Nights for which a space has already been booked should not be available for users to book that space.
>* Until a user has confirmed a booking request, that space can still be booked for that night.

## USER STORIES
----------

### User Story 1: User Can Sign Up

As a Space Renter / Owner
So that I can sign up to MakersBnB,
I'd like to sign up with my name, username, email and password

### User Story 2: Space Owner: Create New Space

As a space owner,  
So that I can hire out my space,  
I'd like to add a name, a short description, the price per night and available date range.  

*Space owner can restrict availability to a single date range before publishing.*

I can create a space:
* I can add a name for my space.
* I can add a short description for my space.
* I can add the price per night for my space.

In the future, it would be nice to create a space with the following information:
* I can add an available date range for my space.

### User Story 3: Space Renter: Listing Spaces Available for Rent

As a space renter,  
So that I can see available spaces to rent,  
I'd like to search for available spaces by entering from and to dates.  

*Space Renter can only see spaces that the space owner has made available.*  
*Space Renter can still see spaces that have a confirmed booking request within the entered dates.*

I can see a list of all spaces:
* I can see the name of the space.
* I can see the description of the space.
* I can see the price per night of the the space.

In the future, it would be nice to filter out spaces that are not available within a specified date range:
* I can search for available spaces by entering from and to dates.

### User Story 4: Space Renter: Booking Request

As a space renter,  
So that I can request a booking for a space,  
I'd like to fill in and submit a booking request with my required date (one night) and chosen space.  

*Space Renter can see whether or not the space has already been booked by date.*  
*Space Renter is able to send a booking request for a space even if another space renter has also done this.*

### User Story 5: Space Owner: Booking Confirmation

As a space owner,  
So that I can confirm a booking request,  
I'd like to change the status of a booking request to confirmed.  

*Space owner is only able to confirm one booking request for the space on a specific date.*

## PROJECT BACKLOG
----------

* Below is our project backlog board - it shows every element of our project
* Our key areas are:
  * Pink Post-its - Project Management
  * Yellow Post-its - User Requirements
  * Blue Post-its - Technical Requirements
  * Green Post-its - Git Management

![Project Backlog](./images/project_backlog.jpg)

## KANBAN
[Team Scorchio Kanban](https://trello.com/invite/b/hBwe7g1w/cfa99aa38609768a8668ecfb506c6ef1/makersbnb)

## DATABASE INSTRUCTIONS
* Connect to psql
* Create the database and the testing database using the psql commands:

```
CREATE DATABASE makers_bnb;

CREATE DATABASE makers_bnb_test;
```

* Connect to the database using the psql command:

```
\c makers_bnb;

\c makers_bnb_test;
```

* To set up the appropriate tables, connect to each database in 'psql' and run the SQL scripts in the 'db/migrations' folder in given order.
