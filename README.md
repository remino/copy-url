<img src="Assets/icon.png" height=128 width=128 alt="CopyURL icon of a clipboard with a link chain in the middle of it">

# CopyURL.app

<https://github.com/remino/copy-url>

macOS App to copy URL to clipboard

By Rémino Rem <https://remino.net/>

I use [Choosy](https://choosy.app/) to open URLs in different browsers. But
sometimes, I wish it had an option to let me just copy the URL it gets. I tried
making an app with Automator, but it cannot accept URLs—only files. Instead, I
needed a real app to do that. I don't know anything about Swift, so I vibecoded
this simple app one night, added it as a browser in Choosy, and it works
beautiful. The app has no UI and it only does one thing: copy the URL it
receives into the clipboard then exit. If you start the app on its own, it'll do
nothing but terminate itself.

There are no packages available. To use this app, you will have to get its
source and compile it yourself in Xcode. If there is a way to distribute
binaries of the app without triggering Apple or making macOS panic, please let
me know.
