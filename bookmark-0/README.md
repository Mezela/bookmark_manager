# BOOKMARK MANAGER



## User Stories

US1
```
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks
```

US2
```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
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

