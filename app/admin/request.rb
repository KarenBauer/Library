ActiveAdmin.register Request, as: 'BookRequest' do
  permit_params :status

  filter :book
  filter :user
  filter :status

  form do |f|
    f.inputs "Requests Details" do
      f.input :status, :label => 'Status', :as => :select, :collection =>  Request.statuses, include_blank: false
    end
    f.actions
  end
end


