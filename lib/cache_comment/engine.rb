module CacheComment
  class Engine < ::Rails::Engine
    initializer 'cache_comment' do |app|
      require 'cache_comment'

      ActiveSupport.on_load :action_controller do
        ActionController::Base.send :include, CacheComment::FragmentHelper
      end

    end
  end
end
