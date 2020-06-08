from flask import Flask
from flask_restful import Api
from flask_cors import CORS
import logging

from src.thesis import GetData
# ------------------------------------------------------------------------------
app = Flask(__name__)
# for develop
app.debug = True
api = Api(app)
CORS(app)

# for develop
logging.basicConfig(level = logging.INFO)

# thesis
api.add_resource(GetData, '/getData') # get

if __name__ == "__main__":
  app.run(port=8000)
