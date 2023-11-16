local-env-create:
	(docker network inspect mynetwork >/dev/null 2>&1 || docker network create -d bridge --subnet=172.23.0.1/16 --gateway=172.23.0.1 mynetwork)
	docker-compose -f stack.yaml up -d
	sleep 3
	docker cp data/user.sql postgressql:/var/lib/postgresql/data
	docker exec postgressql psql -h postgressql -U admin -d postgres -a -f ./var/lib/postgresql/data/user.sql
	docker cp data/empresa.sql postgres-empresa:/var/lib/postgresql/data
	docker exec postgres-empresa psql -h postgres-empresa -U admin -d postgres -a -f ./var/lib/postgresql/data/empresa.sql
	docker cp data/newsletter.sql postgres-newsletter:/var/lib/postgresql/data
	docker exec postgres-newsletter psql -h postgres-newsletter -U admin -d postgres -a -f ./var/lib/postgresql/data/newsletter.sql
	docker cp data/servico.sql postgres-servico:/var/lib/postgresql/data
	docker exec postgres-servico psql -h postgres-servico -U admin -d postgres -a -f ./var/lib/postgresql/data/servico.sql
	docker cp data/prestadora.sql postgres-prestadora:/var/lib/postgresql/data
	docker exec postgres-prestadora psql -h postgres-prestadora -U admin -d postgres -a -f ./var/lib/postgresql/data/prestadora.sql

local-env-destroy:
	docker-compose -f stack.yaml down