module Demenchuk

  OPEN_SOURCE =
  {
    general: [
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
        name: 'Reveally',
        type: 'Ruby on Rails app',
        machine_name: 'reveally',
        url: 'https://github.com/elDante/reveally',
        overview: 'Alliance website for Eve Online',
      }
    ],
    drupal: [
      {
        name: 'HelloBar',
        type: 'Drupal module',
        machine_name: 'hellobar',
        url: 'http://drupal.org/project/hellobar',
        image: 'http://drupal.org/files/project-images/hellobar.PNG',
        overview: 'A Hello Bar is a simple notification bar to deliver a message and drive traffic to a specific call to action.',
      },
      {
        name: 'Blurry',
        type: 'Drupal module',
        machine_name: 'blurry',
        url: 'http://drupal.org/project/blurry',
        image: 'http://drupal.org/files/project-images/blurry.png',
        overview: 'This module can make your text fields blurry.',
      },
      {
        name: 'Panels Import',
        type: 'Drupal module',
        machine_name:'panels_import',
        url: 'http://drupal.org/project/panels_import',
        image: 'http://drupal.org/files/project-images/644b704947131a7422e6e167c425bd0d.png',
        overview: 'This module provides an easy way to import previously exported Panels definitions from corresponding subfolders.',
      },
      {
        name: 'Panels Bootstrap Layouts',
        type: 'Drupal module',
        machine_name: 'panels_bootstrap_layouts',
        url: 'http://drupal.org/project/panels_bootstrap_layouts',
        image: 'http://drupal.org/files/project-images/splash_0.png',
        overview: "Panels' layouts using Twitter Bootstrap layout system as base.",
      },
      {
        name: 'Views Import',
        type: 'Drupal module',
        machine_name: 'views_import',
        url: 'http://drupal.org/project/views_import',
        image: 'http://drupal.org/files/project-images/644b704947131a7422e6e167c425bd0d_0.png',
        overview: 'This module provides an easy way to import previously exported Views definitions.',
      },
      {
        name: 'Views Bootstrap',
        type: 'Drupal module',
        machine_name: 'views_bootstrap',
        url: 'http://drupal.org/project/views_bootstrap',
        overview: "This module provides Twitter Bootstrap's Components integration with Views module.",
      },
      {
        name: 'Views Stapel',
        type: 'Drupal module',
        machine_name: 'views_stapel',
        url: 'http://drupal.org/project/views_stapel',
        image: 'http://drupal.org/files/project-images/ThumbnailPileEffect.jpg',
        overview: 'An experimental jQuery plugin that will group thumbnails by a shared data-attribute into a pile. When clicking on the pile, the thumbnails that belong to that pile will be spread into a grid using CSS transitions.',
      },
      {
        name: 'Views Job Board',
        type: 'Drupal module',
        machine_name: 'views_job_board',
        url: 'http://drupal.org/project/views_job_board',
        image: 'http://drupal.org/files/project-images/Screen%20Shot%202013-01-17%20at%2012.37.55.PNG',
        overview: "This module can render table with job posts and group them by company, that's it.",
      }
    ]
  }
end
