if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_authentication_app', domain: 'https://user-control-pro-6d69dacacf7c.herokuapp.com/'
else
    Rails.application.config.session_store :cookie_store, key: '_authentication_app'
end
