ActiveAdmin.register Priority do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :priority_item, :serialize, :mukou
  #
  # or
  #
  # permit_params do
  #   permitted = [:priority_item, :serialize, :mukou]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
