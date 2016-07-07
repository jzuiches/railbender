<<<<<<< HEAD
# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
=======
# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__

run Sinatra::Application
>>>>>>> 12e6a3580a74f43e45ad834bef045f9e7d88bf88
