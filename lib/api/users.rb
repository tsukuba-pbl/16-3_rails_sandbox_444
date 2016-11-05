module API
  class Users < Grape::API

    desc 'get all users'
    get "all" do
      present User.all, with: API::Entities::User
    end

  end
end