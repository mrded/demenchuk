require 'scorched'
class App < Scorched::Controller
  # render_defaults[:dir] = 'views'
  # render_defaults[:layout] = :main
  config[:static_dir] = 'static'

  render_defaults.merge!(
    engine: :haml,
  )

  get '/' do
    # Skills.
    @skills = getSkills

    # OpenSource
    @opensource = getOpensource()
    @opensourceDrupal = getOpensourceDrupal()

    @clients = getClients()

    render :index, layout: :layout
  end

  def getSkills
    [
      {
        name: 'Frontend',
        items: ['HTML', 'HAML', 'CSS', 'SASS','LESS', 'JavaScript', 'CoffeeScript', 'jQuery', 'AJAX', 'Bootstrap'],
      },
      {
        name: 'Backend',
        items: ['Drupal', 'PHP', 'MySQL', 'SaaS', 'Ruby on Rails', 'Ruby', 'Python'],
      },
      {
        name: 'Testing',
        items: ['SimpleTest', 'Behat', 'Cucumber'],
      },
      {
        name: 'Mobile',
        items: ['PhoneGap', 'jQuery Mobile', 'Backbonejs', 'Spinejs', 'Emberjs'],
      },
      {
        name: 'System Administration',
        items: ['Linux', 'Bash', 'Nginx', 'Apache', 'Varnish', 'Chef', 'Drush', 'High Performance Optimization', 'Rackspace Cloud', 'Amazon Web Services', 'Heroku', 'Pantheon'],
      },
      {
        name: 'Teamwork',
        items: ['BDD', 'TDD', 'Git', 'Mercurial', 'Subversion'],
      },
    ]
  end

  def getOpensource
    [
      {
        name: 'MNPP',
        type: 'Mac + Nginx + Percona + PHP',
        machine_name: 'mnpp',
        url: 'http://getmnpp.org',
        image: 'http://getmnpp.org/images/gui_start_stop.png',
        overview: 'A high performance web server in a one-click installer.',
      },
      {
        name: 'Brew-emp',
        type: '(E)Nginx + MySQL + PHP Installer',
        machine_name: 'brew-emp',
        url: 'https://github.com/mrded/brew-emp',
        image: 'https://github.com/mrded/brew-emp/raw/master/brew-emp.png',
        overview: 'Native way to setup web environment for Mac.',
      },
      {
        name: 'Stapel rails',
        type: 'Ruby on Rails gem',
        machine_name: 'stapel-rails',
        url: 'https://github.com/mrded/stapel-rails',
        image: 'http://drupal.org/files/project-images/ThumbnailPileEffect.jpg',
        overview: 'An experimental jQuery plugin that will group thumbnails by a shared data-attribute into a pile. When clicking on the pile, the thumbnails that belong to that pile will be spread into a grid using CSS transitions.',
      },
    ]
  end

  def getOpensourceDrupal
    [
      {
        :name => 'HelloBar',
        :type => 'Drupal module',
        :machine_name => 'hellobar',
        :url => 'http://drupal.org/project/hellobar',
        :image => 'http://drupal.org/files/project-images/hellobar.PNG',
        :overview => 'A Hello Bar is a simple notification bar to deliver a message and drive traffic to a specific call to action.',
      },
      {
        :name => 'Blurry',
        :type => 'Drupal module',
        :machine_name => 'blurry',
        :url => 'http://drupal.org/project/blurry',
        :image => 'http://drupal.org/files/project-images/blurry.png',
        :overview => 'This module can make your text fields blurry.',
      },
      {
        :name => 'Panels Import',
        :type => 'Drupal module',
        :machine_name => 'panels_import',
        :url => 'http://drupal.org/project/panels_import',
        :image => 'http://drupal.org/files/project-images/644b704947131a7422e6e167c425bd0d.png',
        :overview => 'This module provides an easy way to import previously exported Panels definitions from corresponding subfolders.',
      },
      {
        :name => 'Panels Bootstrap Layouts',
        :type => 'Drupal module',
        :machine_name => 'panels_bootstrap_layouts',
        :url => 'http://drupal.org/project/panels_bootstrap_layouts',
        :image => 'http://drupal.org/files/project-images/splash_0.png',
        :overview => "Panels' layouts using Twitter Bootstrap layout system as base.",
      },
      {
        :name => 'Views Import',
        :type => 'Drupal module',
        :machine_name => 'views_import',
        :url => 'http://drupal.org/project/views_import',
        :image => 'http://drupal.org/files/project-images/644b704947131a7422e6e167c425bd0d_0.png',
        :overview => 'This module provides an easy way to import previously exported Views definitions.',
      },
      {
        :name => 'Views Bootstrap',
        :type => 'Drupal module',
        :machine_name => 'views_bootstrap',
        :url => 'http://drupal.org/project/views_bootstrap',
        :overview => "This module provides Twitter Bootstrap's Components integration with Views module.",
      },
      {
        :name => 'Views Stapel',
        :type => 'Drupal module',
        :machine_name => 'views_stapel',
        :url => 'http://drupal.org/project/views_stapel',
        :image => 'http://drupal.org/files/project-images/ThumbnailPileEffect.jpg',
        :overview => 'An experimental jQuery plugin that will group thumbnails by a shared data-attribute into a pile. When clicking on the pile, the thumbnails that belong to that pile will be spread into a grid using CSS transitions.',
      },
      {
        :name => 'Views Job Board',
        :type => 'Drupal module',
        :machine_name => 'views_job_board',
        :url => 'http://drupal.org/project/views_job_board',
        :image => 'http://drupal.org/files/project-images/Screen%20Shot%202013-01-17%20at%2012.37.55.PNG',
        :overview => "This module can render table with job posts and group them by company, that's it.",
      }
    ]
  end

  def getClients
    [
      {
        name: 'WikiJob Ltd',
        logo: 'clients/wikijob.png',
        url: 'http://wikijob.co.uk',
        description: "UK's largest graduate careers website",
        projects: [
          {
            name: 'WikiJob',
            url: 'http://wikijob.co.uk',
          },
          {
            name: 'WikiFestivals',
            url: 'http://www.wikifestivals.com',
          },
          {
            name: 'Mission Control',
            url: 'http://missioncontrolhq.com',
          },
        ],
      },
      {
        name: 'Planet Illogica, Inc',
        logo: 'clients/planetillogica.png',
        url: 'http://www.planetillogica.com',
        description: 'Self-empowering online artistic community for artists and creative-minded individuals. ',
        projects: [
          {
            name: 'Planet illogica',
            url: 'http://www.planetillogica.com',
          },
        ],
      },
      {
        name: '',
        logo: 'clients/adyax.png',
        url: 'http://www.adyax.com/en',
        description: 'Largest Drupal Shops in Europe with near 100 persons dedicated to Drupal.',
        projects: [
#          {
#            name: 'Les Editions de la Cigale',
#            url: 'http://www.editions-cigale.com',
#          },
        ],
      },
      {
        name: 'National Association for the Education of Young Children',
        logo: 'clients/naeyc.png',
        url: 'http://www.naeyc.org',
        description: "World's largest organization working on behalf of young children.",
        projects: [
          {
            name: 'NAEYC / store',
            url: 'http://www.naeyc.org',
          },
        ],
      },
      {
        name: 'Development Mill',
        logo: 'clients/developmentmill.png',
        url: 'http://developmentmill.com',
        description: 'Russian offshore software development provider.',
        projects: [
 #         {
 #           name: 'Les Editions de la Cigale',
 #           url: 'http://www.editions-cigale.com',
 #         },
          {
            name: 'Planet illogica',
            url: 'http://www.planetillogica.com',
          },
          {
            name: 'NAEYC / store',
            url: 'http://www.naeyc.org',
          },
          {
            name: 'Hi-Human Technologies',
            url: 'http://hi-human.ru',
          },
        ],
      },
      {
       name: 'Omsk State Technical University',
       logo: 'clients/omgtu.png',
       url: 'http://omgtu.ru',
       description: 'Russian Scientific-technological university.',
       projects: [
         {
           name: 'Educational & Methodical Center',
           url: 'http://tso.omgtu.ru',
         },
         {
           name: 'Computer Science and Engineering',
           url: 'http://ivt.omgtu.ru',
         },
       ],
      },
    ]
  end
end
run App
