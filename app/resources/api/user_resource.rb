module Api  
  class UserResource < JSONAPI::Resource
    attributes :name, :email

  end
end