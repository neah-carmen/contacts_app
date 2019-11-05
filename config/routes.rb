Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/first_contact_url" => "contacts#display_first_contact"
    get "/second_contact_url" => "contacts#display_second_contact"
    get "/third_contact_url" => "contacts#display_third_contact"
    get "/show_all_contact_url" => "contacts#show_all_contact_method"
  end
end
