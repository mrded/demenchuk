require 'scorched'
require './setup'

class App < Scorched::Controller
  config[:static_dir] = 'assets'
  render_defaults[:engine] =  :haml

  conditions[:file_exist] = proc {
    # Get :filename from '/blog/:post'
    filename = request.fullpath.split('/')[2]
    File.exist?("views/blog/#{filename}.md")
  }

  get '/' do
    render :index, layout: :'layouts/main'
  end

  get '/blog' do
    content = Dir["views/blog/*"].inject([]) do |res, file|
      filename = File.basename(file, ".md")
      res << {
        filename: filename,
        time: Time.at(filename.to_i),
        body: render( :"blog/#{filename}", engine: :md).split(/<hr \/>/)[0]
      }
    end.sort_by! { |a| a[:time] }

    render :blog, layout: :'layouts/main', locals: { content: content.reverse }
  end

  get '/blog/*', file_exist: true do |filename|
    content = [
      {
        filename: filename,
        time: Time.at(filename.to_i),
        body: render( :"blog/#{filename}", engine: :md)
      }
    ]

    render :blog, layout: :'layouts/main', locals: { content: content }
  end
end

run App
