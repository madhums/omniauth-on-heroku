#config/initializers/omniauth.rb

ActionController::Dispatcher.middleware.use OmniAuth::Builder do
  provider :twitter,   '1BHmCSlcwHUTH2GiGoEw', 'iw8uYbR9ZTjC7jlZ28FyBT99bNZTXJ2EHy9DKsZqP6c'
  provider :facebook,  '174809485864487', '2c235ccb461a6f39d9568fbb59ffc72d'
  provider :linked_in, 'U_BbOgFEf0aTifj6D53OHCgFWDnBD5Pj_xg8e4QVfG9Tcy95SLHFAuh3yvXKCve9', 'AXNZqv5VllDsw5zjG653Wmd9UA5LC5-_MZJ3BBWRpt1VR4A4JqWDt60Wln60_In_'
  provider :open_id,   nil
end
# you will be able to access the above providers by the following url
# /auth/providername for example /auth/twitter /auth/facebook

ActionController::Dispatcher.middleware do
  use OmniAuth::Strategies::OpenID,  nil, :name => "google",  :identifier => "https://www.google.com/accounts/o8/id"
  #use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => "yahoo",   :identifier => "https://me.yahoo.com"
  #use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => "aol",     :identifier => "https://openid.aol.com"
  #use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => "myspace", :identifier => "http://myspace.com"
end
# you won't be able to access the openid urls like /auth/google
# you will be able to access them through
# /auth/open_id?openid_url=https://www.google.com/accounts/o8/id
# /auth/open_id?openid_url=https://me.yahoo.com
