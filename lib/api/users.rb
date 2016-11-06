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
    
    desc 'c users'
    params do
  optional :qqqqqq, type: Array[String]
  end
    post "users" do
      p(params[:qqqqqq])
      jj = params[:qqqqqq]
      jj.each do |xame|
        User.create({:name => xame})
      end
      
      1
    end

  end
end