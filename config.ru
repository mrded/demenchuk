require 'scorched'
class App < Scorched::Controller
  config[:static_dir] = 'static'

  render_defaults.merge!(
    engine: :haml,
  )

  get '/' do
   render :index, layout: :layout
  end
end
run App
