json.extract! contact_model, :id, :name, :telefone, :created_at, :updated_at
json.url contact_model_url(contact_model, format: :json)
