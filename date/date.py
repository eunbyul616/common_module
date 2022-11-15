from datetime import datetime, timedelta


class Date:
    @classmethod
    def today(cls):
        return datetime.now().strftime('%Y-%m-%d')

    @classmethod
    def yesterday(cls):
        return (datetime.now() - timedelta(days=1)).strftime('%Y-%m-%d')

    @classmethod
    def tomorrow(cls):
        return (datetime.now() + timedelta(days=1)).strftime('%Y-%m-%d')
