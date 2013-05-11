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
    @skills = render :skills, locals: {content: getSkills}

    # OpenSource.
    opensource = getOpensource
    @opensourceGeneral = render :opensource, locals: {content: opensource[:general]}
    @opensourceDrupal = render :opensource, locals: {content: opensource[:drupal]}

    # Clients.
    @clients = render :clients, locals: {content: getClients}

    render :index, layout: :layout
  end

end
run App
