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
      filename = File.basename(file, ".md")
      res << {
        filename: filename,
        time: Time.at(filename.to_i),
        body: render( :"blog/#{filename}", engine: :md)
      }
    end.sort_by! {|a| a[:time] }

    render :blog, layout: :'layouts/main', locals: { content: content.reverse }
  end

  get '/blog/*' do | page |
    content = [
      {
        filename: page,
        time: Time.at(page.to_i),
        body: render( :"blog/#{page}", engine: :md)
      }
    ]

    render :blog, layout: :'layouts/main', locals: { content: content }
  end
end

run App
