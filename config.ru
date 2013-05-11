require 'scorched'
class App < Scorched::Controller
  # Include all data files.
  Dir["./data/*.rb"].each {|file| require file }

  # render_defaults[:dir] = 'views'
  # render_defaults[:layout] = :main
  config[:static_dir] = 'static'

  render_defaults.merge!(
    engine: :haml,
  )

  get '/' do
    # Skills.
    @skills = getSkills

    # OpenSource.
    opensource = getOpensource()
    @opensourceGeneral = opensource[:general]
    @opensourceDrupal = opensource[:drupal]

    # Clients.
    @clients = getClients()

    render :index, layout: :layout
  end

end
run App
