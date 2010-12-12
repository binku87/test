set :application, "Test"
set :repository,  "set your repository location here"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, "ubuntu"
role :web, "175.41.146.40"                          # Your HTTP server, Apache/etc
role :app, "175.41.146.40"                          # This may be the same as your `Web` server
role :db,  "175.41.146.40", :primary => true # This is where Rails migrations will run
#server "tutorial.com", :app, :web, :db, :primary => true
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
