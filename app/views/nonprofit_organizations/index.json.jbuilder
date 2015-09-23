json.array!(@nonprofit_organizations) do |nonprofit_organization|
  json.extract! nonprofit_organization, :id
  json.url nonprofit_organization_url(nonprofit_organization, format: :json)
end
