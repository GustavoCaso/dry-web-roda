require 'main/view'

module Main
  module Views
    module Users
      class Index < Main::View
        configure do |config|
          config.template = 'users/index'
        end

        def locals(options)
          { users: [{ name: 'Jane' }, { name: 'Joe' }] }
        end
      end
    end
  end
end
