# Giving KDE A Sincere Try

2023-04-07

**I’ve been using mainly GTK-based environments for a long time.** When I was first forced to switch to Linux in 2020 (my cobbled-together Surface Pro 3 finally succumbed to having magnesium dust shot into the battery after I [dremeled into the back to replace a dead SSD](https://hackaday.com/2015/04/28/upgrading-a-microsoft-surface-to-a-1-tb-ssd/), and my shiny, expensive MacBook Pro had suffered from a motherboard power failure), it was on an old desktop with a 2nd generation i5, and no GPU. Windows 10 lagged and stuttered to an unusable extent, so while I had only tinkered with Linux distros to some extent on spare laptops and Raspberry Pi’s, I had to make the plunge.

When I first installed Linux on this desktop, I initially attempted to use KDE but it was unusably messy due to some OpenGL issues with the integrated graphics card. I then switched to XFCE, then i3 (but using primarily GTK applications). I kept i3 on my desktop and used it alongside XFCE, Cinnamon, and then GNOME on my series of secondhand laptops, before fully standardizing on GNOME within the past year after switching away from the desktop to primarily using my [Darter Pro](https://tech-docs.system76.com/models/darp7/README.html).

I’ve always found myself disliking KDE when trying it out every once in a while on a spare (and usually not very capable) machine. In addition, I haven’t really used many KDE applications, as QT applications look extremely out of place on a GTK desktop. However, when I had to quickly spin up a VM on my Darter Pro for a task, and decided to use a distro that ships KDE just for kicks, I noticed that I didn't immediately hate the look and feel of modern KDE. **I realized that in all these half-hearted attempts to toss KDE on a spare machine and “try it”, I hadn’t actually given myself the real experience of using KDE on my primary machine, with good hardware and a good display.**

With that in mind, I decided that I had to give KDE an honest try. After all, there’s a [whole world of KDE applications I’ve never even tried](https://apps.kde.org/), and KDE’s embrace of user customizability, as well as the potential to [swap out the window manager for a real tiling one](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma) have real appeal to me. At the time of starting this exploration, I’m still firmly in the camp of preferring GTK’s visual aesthetic. However, I want to go at KDE with an open mind, and really see if I could daily drive it.

## Hopping over to the Kool (Desktop Environment) Side

I had a spare m.2 SSD sitting around, so I opted to install it alongside my Silverblue SSD so I have that still available in case I need to access it for any reason.

The next question then was **which distro to choose**. I was initially leaning towards [Fedora Kinoite](https://kinoite.fedoraproject.org/), as it would be most equivalent to my current setup on Silverblue. However, all the quirks and extra setup involved in using an immutable distro as a tinkerer and programmer make it not the most ideal for a short experiment like this. I decided to just go with [KDE Neon](https://neon.kde.org/), as now that I primarily use Silverblue I'm used to working in Flatpaks and [Distroboxes](https://github.com/89luca89/distrobox), and thus KDE Neon being based on Ubuntu LTS doesn't bother me as much.

A quick ISO download and live boot later, and I was greeted with a clean KDE desktop!

![KDE Default Desktop Screenshot](../public/images/kde0/fresh-desktop.png)

*Note: For whatever reason I didn’t have the standard Downloads, Documents, or other directories in my home folder out of the box, but this was quickly resolved with the command `xdg-user-dirs-update`.*

## It’s installed, now what?

With the desktop now installed, I set about doing the initial configuration I usually do on a new distro install, items like setting up my keybindings, preferred touchpad settings, and more. One immediate thing that stood out to me was that there was a *lot* of settings. Every little thing is configurable in Plasma, it’s what they’re known for, but it does make it a little intimidating on initial install compared to GNOME’s polished but simplistic settings menu.

In particular, I was astounded by the sheer amount of choices in the keyboard shortcut menu. Even the most basic of shortcuts, like `Ctrl+C` and `Ctrl+V`, can be remapped to whatever you want. The custom shortcuts are incredibly powerful too, being able to not only run a command but also send keyboard input.

So far, I also really appreciate how snappy and sane KWin’s quick-tiling is. One of my gripes with GNOME has been how limiting only letting uses easily tile two applications side by side is. Additionally, GNOME adds more animations to this, and the tiling simply doesn’t feel as snappy or quick as a result.

I’m still not quite sure how much I’ll be able to get used to Plasma’s design language, but maybe some customization will help with that part, especially considering that even on GNOME I change the system theme and interface font to my own liking (with immense effort thanks to the switch to `libadwaita`). **Tonight and tomorrow, I plan on getting the applications I need installed and configured, as well as begin trying out some of KDE’s applications for various tasks, but overall I'm excited to kick the tires and see what KDE has to offer!**

---

**Edit (2023-04-11):** I opted not to write a sequel to this post, as I stuck with the experiment, and rather enjoyed KDE, but didn't feel like I had enough thoughts to structure an entirely separate post. Overall, the interface is certainly more busy, but does managed to look very cohesive and well-organized nonetheless, expecially when paired with a good system theme like [Lightly](https://github.com/Luwx/Lightly) and a good colorscheme like [Catppuccin Latte](https://github.com/catppuccin/kde) (yes, I went with a light theme for this setup, as KDE actually looks really good with light themes, whether it's the default Breeze theme or with a third party one like the aforementioned). I'll be going back to my Fedora Silverblue setup for now, especially as the distro I chose, KDE Neon, doesn't work very well with my hardware, but I do hope to have a machine running KDE full time at some point!
