from xml import html
import requests

page = requests.get('https://selvin.co')
tree = html.fromstring(page.content)

print(tree)
