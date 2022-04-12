module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :author, String, null: false
    field :peges, String, null: false
    field :words, String, null: false
    field :points, String, null: false
  end
end