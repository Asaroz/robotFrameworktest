import json
import requests
import random



def fetch_fake_data():
    response_API = requests.get('https://jsonplaceholder.typicode.com/users')
    print(response_API)
    data = response_API.text
    parseJson = json.loads(data)
    print(parseJson)
    randomNumber = random.randint(0,9)
    info = parseJson[randomNumber]['name']
    print("Name of a person:\n", info)
    return info

fetch_fake_data()