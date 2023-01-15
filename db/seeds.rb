# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(first_name: 'Zablon', second_name: 'Onchari', email: 'nyabutozablon2@gmail.com')
puts user.first_name  # "Zablon"
puts user.second_name   # "Onchari"

# retirement data
Retirement.create(years: 20, amount_so_far: 10000, goal: 50000, sources: "401k, IRA")
Retirement.create(years: 30, amount_so_far: 20000, goal: 100000, sources: "401k, Roth IRA, Pension")
Retirement.create(years: 40, amount_so_far: 30000, goal: 150000, sources: "401k, Roth IRA, Pension, Savings")


# debt data
Debt.create(debt_name: "Credit card", amount: 1000, date: Date.today, status: "paid")
Debt.create(debt_name: "Student loan", amount: 5000, date: Date.today, status: "paid")
Debt.create(debt_name: "Car loan", amount: 10000, date: Date.today, status: "unpaid")

# goals data
Goal.create(goal_name: "Buy a house", amount: 300000, due_date: Date.today + 1.year)
Goal.create(goal_name: "Save for a vacation", amount: 5000, due_date: Date.today + 6.month)
Goal.create(goal_name: "Save for a new car", amount: 20000, due_date: Date.today + 2.years)

# savings data
Source.create(name: "Paycheck", source_type: "Salary", amount: 5000, frequency: "monthly")
Source.create(name: "Rental property", source_type: "investment", amount: 2000, frequency: "monthly")
Source.create(name: "Part-time job", source_type: "investment", amount: 1000, frequency: "monthly")




