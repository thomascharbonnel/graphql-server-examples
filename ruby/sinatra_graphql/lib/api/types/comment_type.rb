CommentType = GraphQL::ObjectType.define do
  name "Comment"
  description "A comment"
  interfaces [NodeIdentification.interface]
  global_id_field :id

  field :id, !types.ID
  field :body, !types.String
  field :user, -> { UserType }
  field :post, -> { PostType }
end
