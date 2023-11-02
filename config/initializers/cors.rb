Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins 'https://usercontrol-pro.netlify.app/'
        resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete, :options, :head], credentials: true
    end

    # allow do
    #     origins 'https://heroku.com'
    #     resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete, :options, :head], credentials: true
    # end
end