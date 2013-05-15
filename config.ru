require 'scorched'
require './setup'

class App < Scorched::Controller
  config[:static_dir] = 'assets'
  render_defaults[:engine] =  :haml

  get '/' do
    render :index, layout: :'layouts/main'
  end

  get '/blog' do
    content = Dir["views/blog/*"].inject([]) do |res, file|
      filename = File.basename(file, ".*")
      fileext = File.extname(file).split('.').last
      res << {
        time: Time.at(filename.to_i),
        body: render( :"blog/#{filename}", engine: fileext)
      }
    end.sort_by! {|a| a[:time] }

    render :blog, locals: { content: content.reverse }, layout: :'layouts/main'
  end
end

run App