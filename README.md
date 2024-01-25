# Build with Docker
Assuming you have Docker installed, pull the following image:
```bash
$ docker pull jekyll/jekyll:latest
```
Run a container:
```bash
$ docker compose up
```
View the site here: `http://0.0.0.0:4000`
# Build locally
First install Jekyll according to [these instructions](https://jekyllrb.com/docs/installation/).
```bash
$ git clone https://github.com/castacks/website-dev
$ cd website-dev
$ bundle install
$ bundle exec jekyll serve --watch --incremental
```
This should start the web server locally, and enables incremental build.

# Adding your profile
Adding your profile is very simple. First follow the instructions above and launch the site. Then add a markdown page in the `_team` folder with your first name. Edit that file accordingly following the template of the other files in that folder. Also add your picture (resized to `640x480`) in the `img/team` folder. Then push those two files to the master branch of this repository and you're done!

# Adding your publication
Edit the `_bibliography/references.bib` file to add your bibtex and commit to `master`.

[Please use this tools and url (it includes the settings) to format the bib file.](https://flamingtempura.github.io/bibtex-tidy/index.html?opt=%7B%22modify%22%3Atrue%2C%22curly%22%3Atrue%2C%22numeric%22%3Atrue%2C%22months%22%3Atrue%2C%22space%22%3A2%2C%22tab%22%3Atrue%2C%22align%22%3A13%2C%22sort%22%3A%5B%22-year%22%2C%22author%22%5D%2C%22duplicates%22%3A%5B%22key%22%2C%22doi%22%2C%22citation%22%2C%22abstract%22%5D%2C%22stripEnclosingBraces%22%3Atrue%2C%22dropAllCaps%22%3Afalse%2C%22escape%22%3Afalse%2C%22sortFields%22%3A%5B%22title%22%2C%22shorttitle%22%2C%22author%22%2C%22year%22%2C%22month%22%2C%22day%22%2C%22journal%22%2C%22booktitle%22%2C%22location%22%2C%22on%22%2C%22publisher%22%2C%22address%22%2C%22series%22%2C%22volume%22%2C%22number%22%2C%22pages%22%2C%22doi%22%2C%22isbn%22%2C%22issn%22%2C%22url%22%2C%22urldate%22%2C%22copyright%22%2C%22category%22%2C%22note%22%2C%22metadata%22%5D%2C%22stripComments%22%3Afalse%2C%22trailingCommas%22%3Afalse%2C%22encodeUrls%22%3Afalse%2C%22tidyComments%22%3Atrue%2C%22removeEmptyFields%22%3Afalse%2C%22removeDuplicateFields%22%3Atrue%2C%22generateKeys%22%3A%22%5Bauth%3Arequired%3Alower%5D%5Byear%3Arequired%5D%5Bveryshorttitle%3Alower%5D%5BduplicateNumber%5D%22%2C%22lowercase%22%3Atrue%2C%22backup%22%3Atrue%7D)


