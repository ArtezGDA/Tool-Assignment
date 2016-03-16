from bs4 import BeautifulSoup
import requests
import os


url = "http://nos.nl/artikel/2093082-steeds-meer-nekklachten-bij-kinderen-door-gebruik-tablets.html"
r  = requests.get(url)
soup = BeautifulSoup(r.content.decode('utf-8', 'ignore'))
data = soup.find_all("article", {"class": "article"})

with open("data1.txt", "wb") as file:
   content=‘utf-8’
for item in data:
    content+='''{}\n{}\n\n{}\n{}'''.format( item.contents[0].find_all("time", {"datetime": "2016-03-16T09:50:30+0100"})[0].text,
                                            item.contents[0].find_all("a", {"class": "link-grey"})[0].text,
                                            item.contents[0].find_all("img", {"class": "media-full"})[0],
                                            item.contents[1].find_all("div", {"class": "article_textwrap"})[0].text,
                                            )
with open("data1.txt".format(file_name), "wb") as file:
    file.write(content)