# Pairing App Backend
As developers, we're always on the lookout for tools that can make our work easier. And if we can't find those tools, we create them ourselves! That's exactly how this pairing randomizer application started. Although this application is still in development, the goal of this app is to make life easier for instructors by helping them organize and manage their classrooms effortlessly. It takes care of maintaining and optimizing pairs, so instructors can focus on what they do best!

## DB Associations
Although the concept of this application may appear straightforward, during the initial planning stages, it became evident that in order to maximize its potential, the structure of the application would need to be more complex. A detailed approach was necessary to handle the data effectively and ensure scalability, considering the utilization of five database tables and multiple associations.

Database assoications and layouts can be found here:
https://dbdiagram.io/d/63d7f38e296d97641d7d191e


## To Run Locally
- Clone repo
- cd into repo
- `$ rails db:setup`
- `$ bundle`

## Initial Setup
```
$ rails new apartment-app-backend -d postgresql -T
$ cd apartment-app-backend
$ rails db:create
$ bundle add rspec-rails
$ rails generate rspec:install
```

### Devise
```
$ bundle add devise
$ rails generate devise:install
$ rails generate devise User
$ rails g devise:controllers users -c registrations sessions
$ rails generate model create_jwt_denylist
$ rails db:migrate
```

### Resources
```
$ rails g resource Activity name:string
$ rails g Cohort name:string year:string
$ rails g resource Cohort name:string year:string
$ rails g resource Student cohort_id:integer first_name:string last_name:string
$ rails g resource Pair activity_id:integer student_one_id:integer student_two_id:integer
$ rails db:migrate
```
