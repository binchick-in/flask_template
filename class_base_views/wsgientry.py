from app import create_app

application = create_app()

if __name__ == '__main__':
    application.run(debug=True, port=8888, host='0.0.0.0')

