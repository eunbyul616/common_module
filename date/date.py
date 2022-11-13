from datetime import datetime, timedelta

class Date:
    @classmethod
    def today(cls):
        return datetime.now()

    @classmethod
    def yesterday(cls):
        return datetime.now() - timedelta(days=1)

    @classmethod
    def tomorrow(cls):
        return datetime.now() + timedelta(days=1)