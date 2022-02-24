# Tea Subscription

Tea Subscription is a Ruby on Rails Application used to consume and expose data.  The data is exposed through 5 different endpoints.

This application uses Ruby 2.7.2 and Rails 5.2.6.

## Application Setup 

Follow these steps from terminal:
```
cd into desired directory
git clone https://github.com/stephaniemhelm/tea_subscription
cd tea_subscription
bundle install
rails db:{create,migrate}
bundle exec rspec
rails server
```

## Tea API:

- [Tea API](https://tea-api-vic-lo.herokuapp.com/)
- [Tea API GitHub](https://github.com/victoria-lo/TAPI)

Navigate to Postman:
```
In terminal: rails server
Use Postman to view endpoints
localhost:3000
```

## Requesting Database Endpoint Items

- `GET /api/v1/forecast?location=`                 :uses location parameter to consume and expose the forecast for the location
- `GET /api/v1/image?location=`                    :uses location parameter to consume and expose an image for the location
- `POST /api/v1/users`                             :creates a new user in the database and generates a unique api key
- `POST /api/v1/sessions`                          :creates a new session for the user after verifying email and password
