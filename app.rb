class AppSet < Sinatra::Base
  configure do
    set :root, File.expand_path(".")
    set :public_folder, settings.root + "/public"
    enable :sessions
  end
end

class Page < Sinatra::Base
  get '/' do
    "<a href='/mate'>Hi,mate</a>"
  end
  get '/mate/?' do
    "Welcome!"
  end
end

class MyApp < Sinatra::Base
  use AppSet
  use Page
end