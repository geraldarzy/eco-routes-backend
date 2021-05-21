class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :trip_book_id
end
