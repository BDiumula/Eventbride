# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
config.assets.js_compressor = Uglifier.new(:harmony => true)