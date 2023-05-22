# Pairing App Backend
This app is designed to allow instructors to be able to generate randomized pairs for cohorts and optimize the pairs.  

## DB Associations
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
