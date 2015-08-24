json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :mission, :type, :phone, :address_1, :address_2, :city, :state, :zip
  json.url organization_url(organization, format: :json)
end
