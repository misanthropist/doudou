import os
from pxyz import create_app

cfg = os.getenv('FLASK_CONFIG', "development")

app = create_app(cfg)