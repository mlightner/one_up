require File.dirname(__FILE__) + '/one_up/google_plus/objects/base'
Dir[File.dirname(__FILE__) + '/one_up/**/*.rb'].each {|file| require file }


module OneUp
  #CONFIG = YAML.load_file(Rails.root.join("config/facebook.yml"))[Rails.env]
  #APP_ID = CONFIG['app_id']
  #SECRET = CONFIG['secret_key']
end

