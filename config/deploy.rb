require "bundler/capistrano"
require "capistrano_colors"

set :application, "rss"
set :repository,  "https://github.com/kmasaharu/rss_reader.git"
set :user, "hori"
set :use_sudo, false
set :deploy_to, "/var/www/rss"
set :deploy_via, :remote_cache
set :bundle_flags, "--quiet"
default_run_options[:pty] = true
ssh_options[:forward_agent] = true

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "153.121.55.155"                          # Your HTTP server, Apache/etc
role :app, "153.121.55.155"                          # This may be the same as your `Web` server
role :db,  "153.121.55.155", :primary => true # This is where Rails migrations will run
role :db,  "153.121.55.155"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
after "deploy:symlink","deploy:update_crontab"

namespace :deploy do
  desc "Update the crontab file"
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
  task :stop, :roles => :app do
    # do nothing.
  end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_release}/tmp/restart.txt"
  end
  task :update_crontab, :roles => :db do
    run "cd #{release_path} && chmod 755 script/runner"
    run "cd #{release_path} && whenever --update-crontab #{application}"
  end
end

before "bundle:install" do
  run "BUNDLE_GEMFILE=#{current_path}/Gemfile bundle config build.mysql2 '--with-mysql-dir=/usr/local/mysql'"
end
