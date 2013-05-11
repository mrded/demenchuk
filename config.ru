require 'scorched'

class App < Scorched::Controller
  # Include all data files.
  Dir["./data/*.rb"].each {|file| require file }

  config[:static_dir] = 'static'

  render_defaults.merge!(
    engine: :haml,
  )

  get '/' do
    # Skills.
    @skills = render 'sub_templates/skills'.to_sym, locals: {content: getSkills}

    # OpenSource.
    opensource = getOpensource
    @opensourceGeneral = render 'sub_templates/opensource'.to_sym, locals: {content: opensource[:general]}
    @opensourceDrupal = render 'sub_templates/opensource'.to_sym, locals: {content: opensource[:drupal]}

    # Clients.
    @clients = render 'sub_templates/clients'.to_sym, locals: {content: getClients}

    render :index, layout: 'layouts/main'.to_sym
  end

end
run App
