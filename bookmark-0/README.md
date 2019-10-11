# BOOKMARK MANAGER



## User Stories

US1
```
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks.
```

US2
```
As a time-pressed user
So that I can save a website
I want to add a bookmark to Bookmark Manager.
```

US3
```
As a user
So I can remove my bookmark from Bookmark Manager
I want to delete a bookmark
```

US4
```
As a user
So that I can keep my bookmarks up to date
I want to edit a bookmark
```

## Domain Model



## How to use

### To set up the project

Clone this repository and then run:

```
bundle
```

### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 3000
```

### To run tests:

```
rspec
```

### To run linting:

```
rubocop
```

