ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :full_name, :phone_number, :email, :notes
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :phone_number, :email, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :full_name, :phone_number, :email, :notes

  form do |f|
    f.inputs do
      f.input :full_name, label: "Full Name"
      f.input :email
      f.input :phone_number, label: "Phone Number"
      f.input :notes
    end
    f.actions
  end
end
