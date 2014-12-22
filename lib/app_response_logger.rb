require 'colorize'
require 'json'

module AppResponseLogger
  class Railtie < Rails::Railtie
    initializer "app_response_logger.action_controller" do
      ActiveSupport.on_load(:action_controller) do
        after_filter do
          begin
            result = JSON.pretty_generate(JSON.parse(response.body)).colorize(:light_green)
          rescue
            result = response.body.to_s.colorize(:yellow)
          end
          Rails.logger.debug "Responded with: "+result
        end
      end
    end
  end
end
