ActiveAdmin.register User do 

	  permit_params :email, :verified, :time, :photo



  index do
    selectable_column
    id_column
    column :email
    column :verified
    column :photo
            actions
  end



  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :verified
      f.input :time
      f.input :photo
    end
    f.actions
  end

 

end