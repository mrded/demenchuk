require 'scorched'
class App < Scorched::Controller
  render_defaults.merge!(
    engine: :haml,
    layout: :index
  )

  get '/' do
   render :index
  end
end
run App
