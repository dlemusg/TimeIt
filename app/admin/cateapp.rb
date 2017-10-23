ActiveAdmin.register Category do
  permit_params :id, :name, :descripcion, :imagen
  index do
    selectable_column
    id_column
    column :id
    column :name
    column :descripcion
    column :imagen
    actions
  end

  
  form do |f|
    f.inputs do
      f.input :id
      f.input :name
      f.input :descripcion
      f.input :imagen
      end
    f.actions
  end

end


 