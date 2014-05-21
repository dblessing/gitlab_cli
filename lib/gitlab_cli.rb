require 'thor'
require 'gitlab'

require 'gitlab_cli'

module GitlabCLI
  require 'gitlab_cli/commands'
  require 'gitlab_cli/version'

  # Pass start command on to Thor. Just a convenience method to keep things
  # clean in the binary.
  def self.start(*args)
    GitlabCLI::Commands.start(*args)
  end

  def self.load_config(source_path)
    source = File.expand_path(source_path)
    if source.is_a?(String)
      raise "Config file #{source} not found" unless File.exist?(source)

      _config = YAML.load_file(source)

      # Gitlab.configure do |config|
      #   config.endpoint       = _config['endpoint']
      #   config.private_token  = _config['private_token']
      # end
    end
  end
end
