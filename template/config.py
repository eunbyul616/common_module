class Config:
    APP_NAME = ""

class DevelopmentConfig(Config):
    def __init__(self):
        self.DEBUG = True
        self.BASE_DIR = ""


class TestConfig(Config):
    def __init__(self):
        self.DEBUG = True
        self.BASE_DIR = ""

class ProductionConfig(Config):
    def __init__(self):
        self.DEBUG = False
        self.BASE_DIR = ""
