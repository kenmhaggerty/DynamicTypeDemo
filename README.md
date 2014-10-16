DynamicTypeDemo
===============
### A sample app to demonstrate Dynamic Type in iOS 7. ###

##### Summary: #####

This app contains three panes that can be accessed by swiping left and right:

* A pane comparing Dynamic Type sizing (left) with text of uniform size and style (right). You can bold and unbold the text on the right by tapping the center of the bottom toolbar.
* A pane with a list of all installed fonts. You can tap on a font name to see how it appears in the third pane.
* A pane comparing standard Dynamic Type font (Helvetica Neue) with simulated Dynamic Type in other fonts. Quickly scroll through fonts by tapping the left and right buttons in the bottom toolbar, or select a font from the second pane.

In addition, a helper category on UIFont (UIFont+Dynamic) helps simulate Dynamic Type for fonts other than the system font (Helvetica Neue).

The full range of system-wide preferred font sizes can be accessed and set by going into **Settings > General > Accessibility > Larger Text** and setting **Larger Accessibility Sizes** to **ON**. Preferred font sizes can also be accessed via **Settings > Display & Brightness > Text Size**.

##### Known Bugs & Limitations: #####
* Does not work on iOS 6. This is not a huge issue as iOS 6 and earlier do not support Dynamic Type.

##### Work Still Do: #####
* Implement method -[UIFont boldFont] in UIFont+Dynamic that should return the bolded version of a given font.
* Add support for system-wide bolded preferred text.