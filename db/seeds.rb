# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

workouts = Workout.create([
{ date: '12-11-2020' , workout_type: 'Strength', duration: 120, calories: 540, user_id: 1 },
{ date: '12-11-2020' , workout_type: 'Strength', duration: 60, calories: 400, user_id: 1 },
{ date: '12-11-2020' , workout_type: 'Running', duration: 30, calories: 300, user_id: 1 },
{ date: '12-11-2020' , workout_type: 'Strength', duration: 60, calories: 400, user_id: 1 },

{ date: '01-12-2020' , workout_type: 'Strength', duration: 60, calories: 405, user_id: 1 },
{ date: '02-12-2020' , workout_type: 'Strength', duration: 60, calories: 405, user_id: 1 },
{ date: '03-12-2020' , workout_type: 'Running', duration: 30, calories: 301, user_id: 1 },
{ date: '04-12-2020' , workout_type: 'Strength', duration: 60, calories: 410, user_id: 1 },
{ date: '05-12-2020' , workout_type: 'Running', duration: 30, calories: 304, user_id: 1 },
{ date: '06-12-2020' , workout_type: 'Strength', duration: 60, calories: 412, user_id: 1 },
{ date: '07-12-2020' , workout_type: 'Hiking', duration: 125, calories: 613, user_id: 1 }
])

exercises = Exercise.create([
    {workout_id: 1, title: 'Bicep Curls', sets: 3, reps: 20},
    {workout_id: 1, title: 'Skull Crushers', sets: 3, reps: 15},
    {workout_id: 1, title: 'Deadlifts', sets: 3, reps: 15},
    {workout_id: 1, title: 'Pull Ups', sets: 3, reps: 8},
    {workout_id: 1, title: 'Push Ups', sets: 3, reps: 10},
    {workout_id: 1, title: 'Squats', sets: 3, reps: 20}
])

weights = Weight.create([
    {date: '01-09-2020', weight: 90.1, user_id: 1 },
    {date: '07-09-2020', weight: 91.5, user_id: 1 },
    {date: '14-09-2020', weight: 89.5, user_id: 1 },
    {date: '21-09-2020', weight: 85.5, user_id: 1 },
    {date: '25-09-2020', weight: 74.9, user_id: 1 },
    {date: '01-10-2020', weight: 79.1, user_id: 1 },
    {date: '07-10-2020', weight: 77.7, user_id: 1 },
    {date: '14-10-2020', weight: 78.6, user_id: 1 },
    {date: '21-10-2020', weight: 90.7, user_id: 1 },
    {date: '25-10-2020', weight: 81.7, user_id: 1 },
    {date: '01-11-2020', weight: 78.5, user_id: 1 },
    {date: '07-11-2020', weight: 76.4, user_id: 1 },
    {date: '14-11-2020', weight: 76.5, user_id: 1 },
    {date: '21-11-2020', weight: 59.5, user_id: 1 },
    {date: '25-11-2020', weight: 75.7, user_id: 1 },
    {date: '01-12-2020', weight: 74.9, user_id: 1 },
    {date: '07-12-2020', weight: 73.1, user_id: 1 }
])