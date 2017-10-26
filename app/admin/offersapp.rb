ActiveAdmin.register Offer do
  permit_params :id,:name, :description, :picture, :user, :category

  index do
    selectable_column
    id_column
    column :id
    column :name
    column :category
    column "Foto", :picture do |obj|
      image_tag(obj.picture.url(:thumb))
    end
    actions
  end

  filter :category
  filter :user

  form do |f|
    f.inputs do
      f.input :name
      f.input :picture
      f.input :description
      f.input :user
      f.input :category
      end
    f.actions
  end

end


 