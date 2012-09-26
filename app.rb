class AppSet < Sinatra::Base
  configure :production do
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
    "Welcome!, <a href='/user/guest/'>into</a>"
  end
end

class User < Sinatra::Base
  get '/user/:name/?' do
    "#{params[:name]}, Welcome to!"
  end
end

class MyApp < Sinatra::Base
  use AppSet
  use Page
  use User
end