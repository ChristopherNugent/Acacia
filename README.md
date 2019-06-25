# About

![Welcome screen](https://i.imgur.com/VZnwPiF.png)

Acacia is (going to be) a graphical git client built for elementary OS, and
inspired by GitKraken. It'll be a long while before its ready, but you can keep
an eye it for now.

If you want to contribute, reach out to me so we can coordinate our efforts. 
I don't put as much time into open-source work as I used to (hurry, employment)
but I do try to do some.


# Contributing

I'd _love_ for people to start contributing to Acacia. I'm not a college
student anymore and don't always feel like a coding after a long day of...
coding...

The biggest thing I'd love to have is someone who can make sure I properly
implement a model-view-controller architecture to save headache down the road.

I'd also appreciate someone who can work on a set of wrapper classes around
`libgit2` so that the underlying `git` objects are more easily understood.

Finally, if someone can throw together a widget that displays the `git` tree
itself, that's one of the biggest steps towards an app thats worth publishing.

# Dependencies

Acacia has the following dependencies:

- `meson`
- `valac`
- `debhelper`
- `libgranite-dev`
- `libgtk-3-dev`
- `libgee-0.8-dev`
- `libgit2-glib-dev`


