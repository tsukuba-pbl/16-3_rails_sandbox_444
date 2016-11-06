module API
  class Users < Grape::API

    desc 'get all users'
    get "all" do
      present User.all, with: API::Entities::User
    end
    
    desc 'c user'
    params do
      requires :name ,type: String, desc: 'user n'
    end
    post do
      User.create({:name => params[:name]})
    end

  end
end