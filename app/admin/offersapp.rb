ActiveAdmin.register Offer do 

	  permit_params :nombre, :descripcion, :imagen, :user



  index do
    selectable_column
    id_column
    column :nombre
    column :descripcion
    column :imagen
    column :user
            actions
  end



  filter :nombre
  filter :descripcion
  filter :imagen
  filter :user

  form do |f|
    f.inputs do
      f.input :nombre
      f.input :descripcion
      f.input :imagen
      f.input :user
     end
    f.actions
  end

 

end

 