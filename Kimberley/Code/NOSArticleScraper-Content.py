from bs4 import BeautifulSoup
import requests
import os

os.getcwd()
'/home/folder'
os.mkdir("..") #change folder name here
os.chdir("..") #change directory here
os.getcwd()
'/home/Desktop/folder'
os.mkdir("img")  #img folder


url = ".."  #put your url here
r  = requests.get(url)
soup = BeautifulSoup(r.content.decode('utf-8', 'ignore'))
data = soup.find_all("article", {"class": "article"})

with open("data.txt", "wb") as file:
    for item in data:
        print item.contents[0].find_all("time", {"datetime": "2016-03-16T09:50:30+0100"})[0].text 
        print item.contents[0].find_all("a", {"class": "link-grey"})[0].text
        print "\n"
        print item.contents[0].find_all("img", {"class": "media-full"})[0]
        print "\n"
        print item.contents[1].find_all("div", {"class": "article_textwrap"})[0].text
        

  
    