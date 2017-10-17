ActiveAdmin.register User do 

    permit_params :email, :verified, :time, :photo, :photoId1, :photoId2, 
    :firstName, :secondName, :firstLastName, :secondLastName, :idd, :time,
    :tel, :cel, :birthDate, :calification, :typeId, :location, :direccion, :description



  index do
    selectable_column
    id_column
    column :email
    column :time
    column :verified
    column "Foto", :photo do |obj|
      image_tag(obj.photo.url(:thumb))
    end
    column "Id Frente", :photoId1 do |obj|
      image_tag(obj.photoId1.url(:thumb))
    end
    column "Id atras", :photoId2 do |obj|
      image_tag(obj.photoId2.url(:thumb))
    end
            actions
  end

form multipart: true do |f|
    f.inputs User do
      f.input :verified
      f.input :time
      f.input :photo, as: :file, hint: image_tag(f.object.photo.url(:medium))
      f.input :photoId1, as: :file, hint: image_tag(f.object.photoId1.url(:medium))
      f.input :photoId2, as: :file, hint: image_tag(f.object.photoId2.url(:medium))
      f.input :typeId
      f.input :idd
      f.input :firstName
      f.input :secondName
      f.input :firstLastName
      f.input :secondLastName
      f.input :email
      f.input :cel
      f.input :tel
      f.input :birthDate
      f.input :calification
      f.input :location
      f.input :direccion
      f.input :description

      f.actions
    end
  end

  filter :verified

 show do |b|
    attributes_table do
      row :verified
      row :email
      row :photo do
        image_tag(b.photo.url(:medium))
      end
      row :photoId1 do
        image_tag(b.photoId1.url(:medium))
      end
      row :photoId2 do
        image_tag(b.photoId2.url(:medium))
      end

      row :url do
        b.photo.url
      end
      row :url do
        b.photoId1.url
      end
      row :url do
        b.photoId2.url
      end
   
      row :time
      

     row :typeId
     row :idd
     row :firstName
     row :secondName
     row :firstLastName
     row :secondLastName
     row :cel
     row :tel
     row :birthDate
     row :calification
     row :location
      row :direccion
      row :description

=begin
      row :url_medium do
        b.photo.url(:medium)
      end
      row :url_thumb do
        b.photo.url(:thumb)
      end
=end
    end
    active_admin_comments
  end

end