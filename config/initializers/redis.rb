$redis = if Rails.env.production?
        Redis.new(url: ENV["REDIS_URL"])
        else
        Redis.new(host: 'localhost', port: 6379)
        end
