# Conner Dailey's Website

Originally based on Lanyon and Poole themes for GitHub Pages, although with so many styling changes and customization, it exhibits fading resemblance. 

## Updating the site

- **CV:** edit `_data/cv.yml` (employment, education, publications, awards, ...). The page layout is in `cv.html`.
- **Photos:** run `scripts/add-photo.sh path/to/photo.jpg "Caption"`. It makes the web-sized copy and thumbnail and adds the photo to `_data/photos.yml`. Reorder entries there to change the display order. Needs ImageMagick.
- **Menu and footer:** `_includes/header.html` and `_includes/footer.html`.

## Previewing locally

```
sudo apt install ruby-dev libssl-dev   # once
bundle install                          # once
bundle exec jekyll serve
```

Then open http://localhost:4000.
