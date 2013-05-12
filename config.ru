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

  get '/blog' do
    require 'date'

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
