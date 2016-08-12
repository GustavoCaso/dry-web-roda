module Persistence
  class Container < Dry::System::Container
    configure do |config|
      config.root = Pathname(__dir__).join('persistence')
      config.name = :persistence
    end

    require 'db'

    register(:db, Db.new)
  end
end
