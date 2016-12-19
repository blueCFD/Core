#!/usr/bin/python
# Based on https://github.com/asstermo/asstermo.github.io/blob/master/bin/updateDownloads.py

import urllib2
import json

websites = [
      'https://api.github.com/repos/blueCFD/Core/releases',
      ]

print 'File name | # Accesses'
print '---: | :---:'

for website in websites:

    response = urllib2.urlopen(website)
    html = response.read()

    data = json.loads(html)

    for releaseItem in data:

        for asset in releaseItem['assets']:

            print(
                  '[%s](%s) | %d' %
                  (asset['name'], asset['browser_download_url'], asset['download_count'])
                 )

