# kareha Docker image

An easy way to set up a [kareha](http://wakaba.c3.cx/s/web/wakaba_kareha) board

## Usage

 - Install Docker
 
 - Clone the repository somewhere on your machine
 
 - Rename or copy `data/config.default.pl` to `data/config.pl` and `data/nginx.default.conf` to `data/nginx.conf`
 
 - Edit the contents of `data/config.pl`, `data/css/`, `data/include/`, and `data/kareha.js` to configure the frontend of the board
 
 - Edit the contents of `data/nginx.conf` to configure the backend of the board
 
 - Open the downloaded repository folder in a terminal and run `docker build -t kareha --build-arg HOSTNAME=<YOUR HOSTNAME HERE> .` to build the image
 
 - Run `docker run --rm -t -v <REAL DATA FOLDER PATH HERE>:/var/www/<YOUR HOSTNAME HERE>/htdocs/data --env HOSTNAME=<YOUR HOSTNAME HERE> -p 80:80 -p 443:443 kareha`
 
 - That's it! Your kareha board is now running. Visit `<YOUR HOSTNAME HERE>/kareha.pl` once to get things intialized and it should be good to go.
