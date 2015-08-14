json.array!(@accessrecords) do |accessrecord|
  json.extract! accessrecord, :id, :remote_ip
  json.url accessrecord_url(accessrecord, format: :json)
end
