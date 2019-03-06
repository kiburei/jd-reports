json.extract! debtor, :id, :f_name, :l_name, :debt, :created_at, :updated_at
json.url debtor_url(debtor, format: :json)
