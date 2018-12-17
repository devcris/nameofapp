if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_TdKbxlBwGJsl4IpM8FTDOdis',
    secret_key: 'sk_test_c5Pw6UDJmJ62yO5O2lb5WDao'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
