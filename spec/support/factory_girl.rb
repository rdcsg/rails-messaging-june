# Configure your test suite
#
# RSpec with Rails
# spec/support/factory_girl.rb
#
# Remember to require this file in your spec_helper since the support folder isn't eagerly loaded
# In the spec_helper.rb file write: " require 'support/factory_girl' "
#
# Find the file features/support/env_extensions.rb that extends env.rb for this config to work
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end