require 'scorched'
require './setup'

class App < Scorched::Controller
  config[:static_dir] = 'assets'
  render_defaults[:engine] = :erb

  get '/' do
    render :index, layout: :'layouts/main'
  end

  get '/contact' do
    redirect '/'
  end
end

run App
