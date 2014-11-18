json.array!(@apprendices) do |apprendice|
  json.extract! apprendice, :id, :name, :warname, :photo, :allergy, :medicines, :obsevation
  json.url apprendice_url(apprendice, format: :json)
end
