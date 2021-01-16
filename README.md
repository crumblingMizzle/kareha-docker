# kareha Docker image

An easy way to set up a [kareha](http://wakaba.c3.cx/s/web/wakaba_kareha) board

## Usage

 - Install Docker
 
 - Clone the repository somewhere on your machine
 
 - Rename or copy `data/config.default.pl` to `data/config.pl`
 
 - Edit the contents of `data/config.pl`, `data/css/`, `data/include/`, and `data/kareha.js` to configure your kareha board as you would like it
 
 - Open the downloaded repository folder in a terminal and run `docker build -t kareha .` to build the image
 
 - Run `docker run --rm -t -v <REAL DATA FOLDER PATH HERE>:/var/www/localhost/htdocs/data -p 80:80 kareha`
 
 - That's it! Your kareha board is now running. Visit `localhost/kareha.pl` to do the first-time setup.