class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :firstname, :lastname, :activities
end
