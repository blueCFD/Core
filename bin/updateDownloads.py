#!/usr/bin/python
# Based on https://github.com/asstermo/asstermo.github.io/blob/master/bin/updateDownloads.py

import urllib2
import json
import dateutil.parser

websites = [
      'https://api.github.com/repos/blueCFD/Core/releases',
      ]

print 'File name <br/> File last updated (Y-M-D) | # Accesses'
print '---: | :---:'

for website in websites:

    response = urllib2.urlopen(website)
    html = response.read()

    data = json.loads(html)

    for releaseItem in data:

        for asset in releaseItem['assets']:
            assetDT = dateutil.parser.parse(asset['updated_at'])

            print(
                  '[%s](%s) <br/> %s | %d' %
                  (asset['name'], asset['browser_download_url'], assetDT.strftime('%Y-%m-%d'), asset['download_count'])
                 )

