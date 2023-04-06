# ineedmore.coffee

My personal blog/"brain dump"/"digital garden", based on [bliss](https://github.com/sohalsdr/bliss)

Check it out [here](https://ineedmore.coffee)

## Posting Instructions (for my own reference)

1. Make a new post in `posts/`
	a. Put any images for that post in `public/images/<post-name>`
2. Run `make build` to rebuild the site
3. `git add`, `git commit`, and `git push`
4. Use `git subtree push --prefix build/ origin gh-pages` to push the contents of the build directory to the gh-pages branch

***Note:** In the case of a page build error, you can run steps 2-4 again to trigger a commit that just updates a timestamp in the atom feed and forces Pages to attempt a rebuild.*