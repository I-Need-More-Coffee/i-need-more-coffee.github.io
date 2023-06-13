# Trimming Down The Nerd's Cookbook

2023-06-13

I've finally had a chance to do a little cooking again! After being cooped up in a dorm room for two semesters with a shabby excuse of a kitchen shared by the entire floor, I'm back home, with decent burners, a good spice rack, and even an *actual fridge*. Now that I'm doing some more cooking, and hopefully will continue to do so for the forseeable future, I want to have a home for some homegrown recipes. This is even more pertinent now than before college, as I'm a recently-minted vegetarian and as a result often adapt recipes I've loved making in the past to work with my diet. Thus, I took a look at a project I've used once in the past, [nyum](https://github.com/doersino/nyum).

It's a shell-script-based static site generator that takes in Markdown and spits out a [full recipe site](https://doersino.github.io/nyum/_site/index.html), with search, a nice layout, and more. Overall a pretty neat little way to spin up a personal cookbook. However, ever since starting to really work with simple, shell-script-based static site generators, like the one used for this site, I don't like settling with someone else's way of generating a site, I want to hack on it and adapt it to my tastes. And the amazing thing about these simple static site generators is that it's incredibly easy to do so!

As such, I [forked nyum](https://github.com/sohalsdr/nyum), and made a number of changes. I first tackled deployment, modifying the script to build to `docs/` rather than `_site`. This allows me to simply deploy the site onto GitHub pages without any additional hassle, as Pages lets you deploy from `docs/` (but not any other directory for some absurd reason). I also removed the rsync deployment script, GitHub Action, and supporting code inside `build.sh`.

Next up was design and load times. My design language on *I Need More Coffee* (and other tangential pages in the works) is based around basic HTML, using system fonts, and dithered images, which results in simple, inherently responsive design, as well as blazing fast load times. As such, nyum's use of webfonts and a header icon wasn't going to work for me, and I stripped them out. I did keep the other UI icons, as they serve a purpose and I couldn't be bothered to adapt the layouts to work without icons. Honestly, in my opinion, my "trimmed down" version looks better than the original, but that's just my taste so your mileage may vary. I also dithered the images in the demo site to be able to compare resource usage between the original nyum and my planned usage.

**And boy do they compare**. I ran 4 [gtmetrix](https://gtmetrix.com/) reports between the two sites:
 
* [Original Homepage](https://gtmetrix.com/reports/doersino.github.io/nNOV1vqp/)
* [Fork's Homepage](https://gtmetrix.com/reports/sohalsdr.github.io/JDcdVi40/)
* [Original Cheese Buldak Recipe](https://gtmetrix.com/reports/doersino.github.io/43OiGORA/)
* [Fork's Cheese Buldak Recipe](https://gtmetrix.com/reports/sohalsdr.github.io/UtV3isPa/)

The fork's homepage **loaded 3x as fast** (301ms vs. 958ms) and **transmitted less than a tenth of the data** (13.6KB vs. 186KB). The recipe page similarly loaded 3x as fast, but there wasn't as much of a delta in the amount of data transmitted as a vast majority was image data, and the particularly heavy image of the Cheese Buldak didn't want to reduce in filesize tremendously even when dithered to 4 colors and reduced to 1024px wide. 

**On the whole, a few simple changes resulted in a substantial and noticeable decrease in load times and resource usage of this simple site.** I hope you'll check out the [demo site](https://sohalsdr.github.io/nyum), or my [actual cookbook](https://cookbook.ineedmore.coffee) (it only has the sample Strawberry Smoothie recipe for now, but have more recipes soon, I promise). 
