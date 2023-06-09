timestamp=$$(date +%s)

deploy-odoo: deploy-postgres
	timestamp=$(timestamp) docker stack deploy --prune --compose-file odoo/odoo.yaml odoo


deploy-postgres:
	timestamp=$(timestamp) docker stack deploy --prune --compose-file postgres/postgres.yaml postgres


deploy-idempiere:
	timestamp=$(timestamp) docker stack deploy --prune --compose-file idempiere/idempiere.yaml idempiere


deploy-erpnext:
	docker stack deploy --prune --compose-file erpnext/erpnext.yaml erpnext
