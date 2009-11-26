namespace :livevalidation do

  PLUGIN_ROOT = File.dirname(__FILE__) + '/../'

  desc 'Installs required javascript and stylesheet files to the public/ directory.'
  task :install do
    FileUtils.mkdir RAILS_ROOT + "/public/livevalidation" unless File.exists? RAILS_ROOT + "/public/livevalidation"
    FileUtils.cp_r Dir[PLUGIN_ROOT + "/assets/*/*"], RAILS_ROOT + "/public/livevalidation"
    #FileUtils.cp Dir[PLUGIN_ROOT + '/assets/javascripts/*.js'], RAILS_ROOT + '/public/javascripts'
    #FileUtils.cp Dir[PLUGIN_ROOT + '/assets/stylesheets/*.css'], RAILS_ROOT + '/public/stylesheets'
  end

  desc 'Removes the javascript and stylesheet for the plugin.'
  task :remove do
    FileUtils.rm_r RAILS_ROOT + "/public/livevalidation"
    #FileUtils.rm %{live_validation.js}.collect { |f| RAILS_ROOT + "/public/javascripts/" + f  }
    #FileUtils.rm %{live_validation.css}.collect { |f| RAILS_ROOT + "/public/stylesheets/" + f  }
  end

end
