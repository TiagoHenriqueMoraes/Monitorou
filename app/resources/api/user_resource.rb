module Api  
  class UserResource < JSONAPI::Resource
    attributes :name, :institution, :course
  end
end