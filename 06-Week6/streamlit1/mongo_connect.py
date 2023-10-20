import pymongo
import os
from dotenv import load_dotenv
import pandas as pd


# simplified Mongo class for read only
class MongoLite:
    def __init__(self, collection):
        # external environment variables
        load_dotenv()
        self.__mongo_url = os.getenv("MONGO_URL")
        # connect to PyMongo
        self.client = pymongo.MongoClient(self.__mongo_url)
        # Create connection to the database
        self.db = self.client.db
        # Create connection to the collection
        col_name = collection
        self.collection = self.db[col_name]
        # Set the DataFrame index to the id column (not sure if this is needed)
        # self.db.set_index("id", inplace=True)

    def get_keys(self):
        self.documents = self.collection.find()
        unique_keys = []
        for document in self.documents:
            for key in document:
                unique_keys.append(key)

        return unique_keys

    def get_data(self):
        query = {}
        cursor = self.collection.find(query)
        data = list(cursor)
        return pd.DataFrame(
            data
        )  # wondering if this is cheating and pulling down too much data
