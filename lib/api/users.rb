module API
  class Users < Grape::API

    desc 'get all users'
    get "all" do
      present User.all, with: API::Entities::User
    end
    
    desc 'c user'
    params  do
      requires :name ,type: String, desc: 'user n'
    end
    post "aasx" do
      User.create({:name => params[:name]})
    end
    
    desc 'c users'
    params do
  optional  :users, type: Array do
    optional  :name, type: String
  end
    end
    post "aausers" do
      p(params[:users])
      jj = params[:users]
      p(jj[1][:name])
      jj.each do |hhhh|
        User.create({:name => hhhh[:name]})
      end
      1
    end

  end
end