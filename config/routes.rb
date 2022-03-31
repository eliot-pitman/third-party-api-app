Rails.application.routes.draw do
  get "/birds/:region_code" => "birds#index"
end
