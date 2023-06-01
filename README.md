# ☕ I Need More Coffee

My personal blog/"brain dump"/"digital garden", based on [bliss](https://github.com/sohalsdr/bliss)

Check it out [here](https://ineedmore.coffee)

## Posting Instructions (for my own reference)

1. Make a new post in `posts/`
	a. Put any images for that post in `public/images/<post-name>`
2. Run `make build` to rebuild the site
3. `git add`, `git commit`, and `git push`

***Note:** In the case of a page build error, you can run steps 2-3 again to trigger a commit that just updates a timestamp in the atom feed and forces Pages to attempt a rebuild.*

## Directory Layout

**Note:** All pages and posts are built to the root directory of the final site, and as such the names cannot conflict!

```text
.
├── bliss
│   └── The blog generation script itself.
├── CNAME
│   └── Defines the custom domain name. This gets rsynced to the root of the docs folder.
├── devices/
│   └── Individual device pages. Built in the same manner as the pages directory, but separated for cleanliness.
├── docs/
│   └── Site builds to this folder and it gets served to GitHub Pages.
├── footer.html
│   └── Footer that gets appended to each page on the site.
├── header.html
│   └── Header that gets prepended to each page on the site.
├── index.md
│   └── Generates the blurb on the main page.
├── LICENSE
│   └── The license.
├── Makefile
│   └── Makefile that defines the build commands for the site.
├── pages/
│   └── Standalone pages on the site. These do not get added to the feed on the main page.
├── posts/
│   └── Chronological site posts. These get added to the feed on the main page
├── public/
│   ├── favicon/
│   │   └── Site favicon(s)
│   └── images/
│       ├── Site images, sorted into folders based on the post/page they belong to.
│       └── devices/
│           └── Device photos are all aggregated into this folder for cleanliness.
├── README.md
│   └── The page you're reading right now.
├── style.css
│   └── Stylesheet for the site.
└── templates
    └── Page templates that I can copy from, for my own reference.
```
