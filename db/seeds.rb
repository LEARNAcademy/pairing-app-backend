user1 = User.where(email: 'test@test.com').first_or_create(password: 'testing123', password_confirmation: 'testing123')
user2 = User.where(email: 'testing@test.com').first_or_create(password: 'testing1234', password_confirmation: 'testing1234')

activities = [
    {
      name: 'Javascript Intro',
    },
    {
      name: 'Javascript Conditionals'
    },
    {
      name: 'Javascript Arrays'
    },
    {
      name: 'Javascript Loops'
    },
    {
      name: 'Javascript Functions'
    },
    {
      name: 'Javascript HOF'
    }
]

activities.each do |activity|
  Activity.create(activity)
  p "created: #{activity}"
end

cohorts = [
  {
    name: 'Alpha',
    year: '2023'
  },
  {
    name: 'Foxtrot',
    year: '2022'
  },
]

cohorts.each do |cohort|
  Cohort.create(cohort)
  p "created: #{cohort}"
end

students = [
  {
    cohort_id: 1,
    first_name: 'Alex',
    last_name: 'Crooner'
  },
  {
    cohort_id: 1,
    first_name: 'Brandy',
    last_name: 'Raymond'
  },
  {
    cohort_id: 1,
    first_name: 'Chris',
    last_name: 'Almond'
  },
  {
    cohort_id: 1,
    first_name: 'Dee',
    last_name: 'Mayor'
  }, 
  {
    cohort_id: 2,
    first_name: 'Simba',
    last_name: 'Lion'
  },
  {
    cohort_id: 2,
    first_name: 'Elsa',
    last_name: 'Arendale'
  },
  {
    cohort_id: 2,
    first_name: 'Prince',
    last_name: 'Charming'
  },
  {
    cohort_id: 2,
    first_name: 'Cinder',
    last_name: 'Ella'
  }
]

students.each do |student|
  Student.create(student)
  p "created: #{student}"
end


pairs = [
  {
    activity_id: 1,
    cohort_id: 1,
    student_one_id: 2,
    student_two_id: 3
  },
  {
    activity_id: 1,
    cohort_id: 1,
    student_one_id: 1,
    student_two_id: 4
  },
  {
    activity_id: 2,
    cohort_id: 1,
    student_one_id: 1,
    student_two_id: 2
  },
  {
    activity_id: 2,
    cohort_id: 1,
    student_one_id: 3,
    student_two_id: 4
  },
  {
    activity_id: 1,
    cohort_id: 2,
    student_one_id: 5,
    student_two_id: 7
  },
  {
    activity_id: 1,
    cohort_id: 2,
    student_one_id: 6,
    student_two_id: 8
  },
  {
    activity_id: 2,
    cohort_id: 2,
    student_one_id: 5,
    student_two_id: 6
  },
  {
    activity_id: 2,
    cohort_id: 2,
    student_one_id: 7,
    student_two_id: 8
  }
]

pairs.each do |pair|
  Pair.create(pair)
  p "created: #{pair}"
end