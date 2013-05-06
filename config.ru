require 'scorched'
class App < Scorched::Controller
  config[:static_dir] = 'static'

  render_defaults.merge!(
    engine: :haml,
    layout: :index
  )

  get '/' do
   render :index
  end
end
run App
