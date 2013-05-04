require 'scorched'
class App < Scorched::Controller
  render_defaults.merge!(
    engine: :haml,
    layout: :index
  )

  get '/' do
   # 'hello world'
    render('templates/index.html')
  end
end
run App

