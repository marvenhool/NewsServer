# NewsServer
its a news publish APIs based on rails4.1

its a simple way to use this for your android, ios applications,

with this you can easily create data based apps by this json results respond from this server.

how to start:

1 download this project to you computer

2 run the Bundler install command

3 run the rake migrate command to init the database

4 run this server

5 enjoy


you can get the json data from server database by GET request like this:

[your server address root]+"/news/all"


or like this 

[your server address root]+"/news/id?id="+[XX]


you can also get xml data by fromat param, like this

[your server address root]+"/news/id?id="+[XX]+"&format=xml"

examples:

http://127.0.0.1:3000/news/all
http://127.0.0.1:3000/news/all?format=xml
http://127.0.0.1:3000/news/all?format=json

http://127.0.0.1:3000/news/id?id=1
http://127.0.0.1:3000/news/id?format=xml&id=1
http://127.0.0.1:3000/news/id?format=json&id=1

the main codes is now on updating, enjoy!


