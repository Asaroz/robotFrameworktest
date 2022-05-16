import json
import requests
import random



def Create_Testdata():
    response_API = requests.get('https://jsonplaceholder.typicode.com/users')
    data = response_API.text
    parseJson = json.loads(data)
    randomNumber = random.randint(0,9)
    name = parseJson[randomNumber]['name']

    return name
