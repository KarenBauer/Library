ActiveAdmin.register Book do
  permit_params :title, :year, :isbn

  filter :title
  filter :year
  filter :isbn
end
