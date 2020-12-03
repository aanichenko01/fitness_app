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
    {workout_id: 4, title: 'Bicep Curls', sets: 3, reps: 12},
    {workout_id: 4, title: 'Skull Crushers', sets: 3, reps: 12}
])