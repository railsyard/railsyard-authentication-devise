Railsyard::Backend.define_editor_for User do

  label :name

  list do
    sortable using: :foo
    field :name
    field :email
  end

  edit do
    field :name
    field :email
    group :password do
      field :password
      field :password_confirmation
    end
  end

end
