import urllib2
from os.path import basename
from urlparse import urlsplit
from bs4 import BeautifulSoup

url = ".." #put url here
urlContent = urllib2.urlopen(url).read()
soup = BeautifulSoup(''.join(urlContent))
imgTags = soup.findAll('img') #finds all img tags

# download all images
for imgTag in imgTags:
    imgUrl = imgTag['src']
    try:
        imgData = urllib2.urlopen(imgUrl).read()
        fileName = basename(urlsplit(imgUrl)[2])
        output = open(fileName,'wb')
        output.write(imgData)
        output.close()
    except:
        pass