timestamp=$$(date +%s)

deploy-odoo: deploy-postgres
	timestamp=$(timestamp) docker stack deploy --prune --compose-file odoo/odoo.yaml odoo


deploy-postgres:
	timestamp=$(timestamp) docker stack deploy --prune --compose-file postgres/postgres.yaml postgres


deploy-idempiere:
	timestamp=$(timestamp) docker stack deploy --prune --compose-file idempiere/idempiere.yaml idempiere


deploy-erpnext:
	docker stack deploy --prune --compose-file erpnext/erpnext.yaml erpnext

deploy-mysql:
	docker stack deploy --prune --compose-file mysql/mysql.yaml mysql

deploy-mysql56:
	docker stack deploy --prune --compose-file mysql56/mysql56.yaml mysql56
