# Vanity

Updated 2023-04-23

![HP Pavilion x360 from the front right, folded into tent mode](../public/images/devices/vanity.png)

## Info Table

| Key           | Value                         |
| Type          | Laptop                        |
| Model Name    | HP Pavilion x360              |
| Model Number  | 13-a010dx                     |
| OS            | Windows 11                    |
| Year Made     | 2014                          |
| Year Acquired | 2022                          |
| CPU           | Intel Core i3-4030u           |
| GPU           | Intel HD Graphics 4400        |
| RAM           | 4GB DDR3                      |
| Storage       | 128GB SATA SSD                |

## Summary

This machine reeks of 2014 budget laptop, in many of the same ways that my own first laptop (a Dell Inspiron of the same era) did. Cheap plastic construction, 1366x768 screen, a low end Haswell processor paired with 4 gigs of ram (or 8 if you were fancy), and a hard drive with a somewhat large 512GB or 1TB capacity to distract you from the fact that it's a slow 5400rpm drive just eager to whir it's way to the grave. However, this machine does have a few things going for it in my arsenal. When paired with an SSD it performs *ok*, even able to handle Windows 11 with the help of an iso modified with [tiny11builder](https://github.com/ntdevlabs/tiny11builder). I also underestimated the utility of the 2-in-1 form factor, as the tent mode really comes in handy to move the screen closer to me when working on math or physics assignments, or get the keyboard out of the way so I can use my [keyboard of preference](./uses) instead. It also looks sort of nice on the outside, at least for a plastic laptop.

## Notes

- Somewhat mediocre battery life, averaging 3-4 hours on Windows.
- Viewing angles on the screen are terrible, somewhat nullifying a lot of the utility that the 2-in-1 form factor provides. Screen needs to be at a very particular (and somewhat awkward at times) angle to not wash out.
- The touchscreen has a noticeably better surface than other similar devices I've used, but it is unfortunately pretty reflective, and light mode is often necessary for a usable experience 
- The keyboard and touchpad are frankly mediocre, and it's also developing this pesky issue where pressing the palmrest a certain way makes the keyboard think the super key is being held down, and I need to hit the super key to get it to stop freaking out.

## Software Notes

### Windows 11, Spring 2022 to Present

This laptop is currently running Windows 11 22H2, installed from a modified iso created using [tiny11builder](https://github.com/ntdevlabs/tiny11builder). Getting Windows 11 to run smoothly on this laptop also involves being aggressive about not letting services run in the background, blocking network traffic using [simplewall](https://www.henrypp.org/product/simplewall), and using Group Policy to disable things like Widgets. However, I do really like Windows 11's tablet experience compared to previous versions of Windows, and feel like it strikes a nice balance of being very touch friendly while also not limiting the user from a typical laptop workflow even when in tablet mode.