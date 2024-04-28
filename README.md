# Personal Site

## Working ruby environment

Works great on ruby 2.5.8, recommend using `rvm install 2.5.8`.

Run this in the WSL:
```bash
rvm use 2.5.8
```

Issue `sudo apt-get install libmagickwand-dev` before `bundle install` (Ubuntu).

## Run locally (with auto-update for any change)
```bash
bundle exec jekyll serve --livereload
```

## Ready to release
```bash
bundle exec jekyll build
```

## upload to Athena MIT
```bash
cd _site
scp -r ./* yijiangh@ftp.dialup.mit.edu:/mit/yijiangh/www
```

## ssh in Athena MIT
```
ssh yijiangh@ftp.dialup.mit.edu
```

## give permission to the folder `~/www` if recreated
If you recreate the folder "www" (the cause might be accidentally deleting the original one), remember to do this 'fs sa www system:anyuser rl' to enable any users on the web (including your self) to view it. See [here](http://kb.mit.edu/confluence/pages/viewpage.action?pageId=3907090) for more info.

Run the following if you need to give permission to folders recursively:

```bash
add consult
fsr sa ~/www system:anyuser rl
```

See [here](http://kb.mit.edu/confluence/pages/viewpage.action?pageId=3907138) for more info.

## Troubleshooting

### Install RMagic `2.16.0` on Windows

`Error: Failed to build gem native extension.`, check [this post](https://medium.com/ruby-on-rails-web-application-development/install-rmagick-gem-on-windows-7-8-10-imagemagick-6-9-4-q16-hdri-5492c3fef202) for a solution.


## Package MagickCore was not found in the pkg-config search path 
See [this post](https://stackoverflow.com/questions/38200015/package-magickcore-was-not-found-in-the-pkg-config-search-path/54436210).