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
rails db:{create,migrate,seed}
bundle exec rspec
all tests pass
rails server
```

## Tea API:

- [Tea API](https://tea-api-vic-lo.herokuapp.com/)
- [Tea API GitHub](https://github.com/victoria-lo/TAPI)

Navigation to View Endpoints:
```
In terminal: rails server
Use Postman to view endpoints
localhost:3000
```

## Requesting Database Endpoint Items

- `GET /api/v1/:customer_id/subscriptions`                    :view all customer's subcriptions(active and cancelled)
- `POST /api/v1/:customer_id/subscriptions`                   :creates a new subscription for given customer
- `PATCH /api/v1/:customer_id/subscriptions`                  :updates customer's subscription (activate or cancel)
- `GET /api/v1/customers/:id`                                 :view customer information by id
- `GET /api/v1/teas/:id`                                      :view tea information by id

## Database Schema
<img width="591" alt="Screen Shot 2022-02-21 at 8 34 40 AM" src="https://user-images.githubusercontent.com/81917337/155583474-013b4780-f78c-4c33-9101-cbfcc648e49a.png">

## Example GET Request
