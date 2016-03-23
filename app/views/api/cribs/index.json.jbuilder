json.cribs @cribs do |crib| 
	json.data do
		json.attributes do
			json.description crib.description
			json.owner_id crib.owner_id
			json.tenants crib.tenants.size
		end
		json.relationships do
			json.owner do
				json.id crib.owner.id
				json.first_name crib.owner.first_name
				json.last_name crib.owner.last_name
				json.email crib.owner.email
				json.links do
					json.self api_owner_url(crib.owner)
					json.cribs api_owner_cribs_url(crib.owner)
				end
			end
			json.tenants crib.tenants do |tenant|
				json.id tenant.id
				json.name tenant.name
				json.age tenant.age
				json.national_id tenant.national_id
				json.links do
					json.self api_tenant_url(tenant)
				end
			end
		end
	end
end


