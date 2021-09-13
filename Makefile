openapi-clients: openapi-client-python openapi-client-typescript

openapi-client-python:
	@npx @openapitools/openapi-generator-cli generate -i openapi.yaml -g python -o dist/python/ -c config-python.yaml

openapi-client-typescript:
	@npx @openapitools/openapi-generator-cli generate -i openapi.yaml -g python -o dist/typescript/ -c config-typescript.yaml
