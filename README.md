# Book me app

## Introduction

this is a simple application to register bookings for small hotels, small location where people can stay. 

It could also be used by larger hotels or locations that don't want to manage there own booking software

## How it works

Send a booking via a POST API request as shown below""

### Booking api request

POST /api/v1/bookings

params 
```json

{
  "access_key": "access key",
  "booking" : {
    "user_name": "Joshua Waiswa",
    "email": "test@example.com",
    "phone_number": "",
    "start_on": "2023-02-16",
    "end_on": "2023-02-23",
    "details": "",
    "adult_no": 2,
    "child_no": "0"
  }
}
```


Where the access_key is the access key passed to you once your company has ben registered on the application

### Access

During the registration process, a user is created for you for your company. 

The user is able to log into the application and they can view the bookings created