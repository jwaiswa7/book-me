# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def create_admin_user
  AdminUser.create(
    name: 'Joshua Waiswa',
    email: 'admin@example.com',
    password: 'password'
  )
end

def create_company
  Company.create(
    name: 'Test company',
    address: 'Kampala',
    contact: '077XXXXXXX'
  )
end

def create_user
  company = Company.first
  User.create(
    company: company,
    first_name: 'John',
    last_name: 'Doe',
    phone_number: '0771XXXXXX',
    email: 'test@example.com',
    password: 'password'
  )
end

def create_service
  company = Company.first
  Service.create(
    name: 'Test service',
    company: company
  )
end

def create_bookings
  service = Service.first

  10.times do
    start_date = Time.zone.today + rand(9)
    end_date = start_date + 1.week
    Booking.create(
      user_name: "John Doe_#{rand(9)}",
      email: "test#{rand(9)}@example.com",
      phone_number: "077XXX#{rand(9)}XX#{rand(9)}",
      start_on: start_date,
      end_on: end_date,
      service: service,
      adult_no: rand(9),
      child_no: rand(9)
    )
  end
end

create_admin_user
create_company
create_user
create_service
create_bookings
