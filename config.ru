require 'scorched'
# Include all data files.
Dir["./lib/*.rb"].each {|file| require file}

class App < Scorched::Controller
  config[:static_dir] = 'static'
  render_defaults[:engine] =  :haml

  get '/' do
    # Skills.
    @skills = render 'sub_templates/skills'.to_sym, locals: {content: Demenchuk::SKILLS}

    # OpenSource.
    opensource = Demenchuk::OPEN_SOURCE
    @opensourceGeneral = render 'sub_templates/opensource'.to_sym, locals: {content: opensource[:general]}
    @opensourceDrupal = render 'sub_templates/opensource'.to_sym, locals: {content: opensource[:drupal]}

    # Clients.
    @clients = render 'sub_templates/clients'.to_sym, locals: {content: Demenchuk::CLIENTS}

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
