# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

workouts = Workout.create([
{ date: '12-05-2020' , workout_type: 'Running', duration: 30, calories: 300, user_id: 1 },
{ date: '12-05-2020' , workout_type: 'Strength', duration: 60, calories: 400, user_id: 1 },
{ date: '12-05-2020' , workout_type: 'Running', duration: 30, calories: 300, user_id: 1 },
{ date: '12-05-2020' , workout_type: 'Strength', duration: 60, calories: 400, user_id: 1 },

{ date: '01-12-2020' , workout_type: 'Running', duration: 30, calories: 300, user_id: 1 },
{ date: '02-12-2020' , workout_type: 'Strength', duration: 60, calories: 400, user_id: 1 },
{ date: '03-12-2020' , workout_type: 'Running', duration: 30, calories: 300, user_id: 1 },
{ date: '04-12-2020' , workout_type: 'Strength', duration: 60, calories: 400, user_id: 1 }
])

exercises = Exercise.create([
    {workout_id: 1, title: 'Bicep Curls', sets: 3, reps: 12},
    {workout_id: 1, title: 'Skull Crushers', sets: 3, reps: 12}
])

weights = Weight.create([
    {date: '01-10-2020', weight: 80.5, user_id: 1 },
    {date: '07-10-2020', weight: 79.5, user_id: 1 },
    {date: '14-10-2020', weight: 78.6, user_id: 1 },
    {date: '21-10-2020', weight: 80.7, user_id: 1 },
    {date: '25-10-2020', weight: 81.7, user_id: 1 },
    {date: '01-11-2020', weight: 78.5, user_id: 1 },
    {date: '07-11-2020', weight: 76.4, user_id: 1 },
    {date: '14-11-2020', weight: 76.5, user_id: 1 },
    {date: '21-11-2020', weight: 75.9, user_id: 1 },
    {date: '25-11-2020', weight: 75.7, user_id: 1 },
    {date: '01-12-2020', weight: 74.9, user_id: 1 },
    {date: '07-12-2020', weight: 75.1, user_id: 1 },
    {date: '14-12-2020', weight: 60.5, user_id: 1 },
    {date: '21-12-2020', weight: 59.5, user_id: 1 }
])