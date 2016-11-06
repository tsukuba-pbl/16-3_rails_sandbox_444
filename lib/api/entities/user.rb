module API
  module Entities
    class User < Grape::Entity
      expose :name ,documentation: { type: String, desc: 'Birthday of Hussar' }
    end
  end
end