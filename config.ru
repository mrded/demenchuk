require 'scorched'
require './setup'

class App < Scorched::Controller
  config[:static_dir] = 'assets'
  render_defaults[:engine] =  :haml

  get '/' do
    # Skills.
    @skills = render 'partials/skills'.to_sym, locals: {content: Demenchuk::SKILLS}

    # OpenSource.
    opensource = Demenchuk::OPEN_SOURCE
    @opensourceGeneral = render 'partials/opensource'.to_sym, locals: {content: opensource[:general]}
    @opensourceDrupal = render 'partials/opensource'.to_sym, locals: {content: opensource[:drupal]}

    # Clients.
    @clients = render 'partials/clients'.to_sym, locals: {content: Demenchuk::CLIENTS}

    render :index, layout: 'layouts/main'.to_sym
  end

  get '/blog' do
    content = []

    Dir["views/blog/*"].each do |file|
      filename = File.basename(file, ".*")
      fileext = File.extname(file).split('.').last
      time = Time.at(filename.to_i)

      content << {
        datetime: time.strftime("%Y-%m-%d %H:%M").to_s,
        year: time.strftime("%Y"),
        date: time.strftime("%d %b"),
        body: render( ('blog/' + filename).to_sym, engine: fileext.to_sym)
      }
    end

    render :blog, layout: 'layouts/main'.to_sym, locals: {content: content.reverse}
  end

end
run App
