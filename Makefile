interative:  
	@read -p "Enter the Database Host or Ip (optional; default: localhost): " dbHost; \
	read -p "Enter the Database Username (optional; default: postgres): " dbUser; \
	read -p "Enter the Database Password: " dbPass; \
	read -p "Enter the Database Port (optional; default: 5432): " dbPort; \
	read -p "Enter the Database Name (optional; default: rocketpay): " dbName; \
	if [ -z $$dbHost ]; then export DB_HOST=localhost; else export DB_HOST=$$dbHost; fi; \
	if [ -z $$dbPort ]; then export DB_PORT=5432; else export DB_PORT=$$dbPort; fi; \
	if [ -z $$dbName ]; then export DB_NAME=rocketpay; else export DB_NAME=$$dbName; fi; \
	if [ -z $$dbUser ]; then export DB_USER=postgres; else export DB_USER=$$dbUser; fi; \
	export DB_PASS=$$dbPass; \
	iex -S mix
.PHONY: interative

dev:  
	@read -p "Enter the Database Host or Ip (optional; default: localhost): " dbHost; \
	read -p "Enter the Database Username (optional; default: postgres): " dbUser; \
	read -p "Enter the Database Password: " dbPass; \
	read -p "Enter the Database Port (optional; default: 5432): " dbPort; \
	read -p "Enter the Database Name (optional; default: rocketpay): " dbName; \
	if [ -z $$dbHost ]; then export DB_HOST=localhost; else export DB_HOST=$$dbHost; fi; \
	if [ -z $$dbPort ]; then export DB_PORT=5432; else export DB_PORT=$$dbPort; fi; \
	if [ -z $$dbName ]; then export DB_NAME=rocketpay; else export DB_NAME=$$dbName; fi; \
	if [ -z $$dbUser ]; then export DB_USER=postgres; else export DB_USER=$$dbUser; fi; \
	export DB_PASS=$$dbPass; \
	mix phx.server
.PHONY: dev

dev-ecto:  
	@read -p "Enter the Database Host or Ip (optional; default: localhost): " dbHost; \
	read -p "Enter the Database Username (optional; default: postgres): " dbUser; \
	read -p "Enter the Database Password (required): " dbPass; \
	read -p "Enter the Database Port (optional; default: 5432): " dbPort; \
	read -p "Enter the Database Name (optional; default: rocketpay): " dbName; \
	if [ -z $$dbHost ]; then export DB_HOST=localhost; else export DB_HOST=$$dbHost; fi; \
	if [ -z $$dbPort ]; then export DB_PORT=5432; else export DB_PORT=$$dbPort; fi; \
	if [ -z $$dbName ]; then export DB_NAME=rocketpay; else export DB_NAME=$$dbName; fi; \
	if [ -z $$dbUser ]; then export DB_USER=postgres; else export DB_USER=$$dbUser; fi; \
	export DB_PASS=$$dbPass; \
	mix ecto.setup
.PHONY: dev-ecto