docker build -t test_server_flask_image .

docker create --name test_server_flask \
	-e VIRTUAL_HOST="your.domain" \
	-e VIRTUAL_PORT=80 \
        -e ENABLE_ACME=true \
        -e FLASK_APP=main/main.py \
        -e FLASK_DEBUG=1 \
        -e RUN="flask run --host=0.0.0.0 --port=80" \
	-v $(pwd)/app:/app \
	test_server_flask_image
