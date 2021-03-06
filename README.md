# University of Lincoln LaTeX Templates

### Computer Science workshop template
The workshop template can be found in `lincoln-labs/workshop.tex`. More information regarding this template is found within the document itself.. so have a look. 

The template itself is found as a document class, located in`lincoln-labs/lincolncslab.cls`. Please do not delete `logo.pdf` within the same folder, as this is needed as part of the template!


### Computer Science assignment brief template
The assignment brief template can be found in `lincoln-brief/brief.tex`. The brief itself uses the `lincolncsbrief.cls` class, located in `lincoln-brief/lincolncsbrief.cls` -- please don't delete this file, or `lincoln-brief/logo.pdf`!

More information about the template is found within the template itself.

#### Rendering options
The only thing you need to alter in this template is the text. If however, you want to render the brief in a sans-serif font, then pass `sansserif` within the `\documentclass` command like so:

```
\documentclass[sansserif]{lincolncsbrief}
```

More information about macros that can be used is found in the `tex` file itself. 


### Computer Science report template
The report template can be found in `lincolncsreport/main.tex`. This template was initially designed for Transfer Viva reports, however, it could be used for a number of purposes. You could in theory use this as a thesis template! To use this template, just set the documentclass to `lincolncsreport` and make sure the `.cls` file is in your project's root folder (along with your `main.tex`). Please do not delete `lincolncsreport/logo.pdf`.

More information such as template options can be found in `main.tex`. If you really want to tweak the template, it should be fairly easy to modify. It might also help you understand how the template is built!


# Other templates 
## Workshop announcements 
Workshop announcements are provided as html files which can be loaded into a browser when a workshop is being delivered. 

These are located in `workshop-announcements/computer-science` and `workshop-announcements/games-computing`. Furthermore, you can alter the background to whatever you wish, by replacing the `bg.jpg` file with your choice.

You can notify students of which workshop is being ran, and brief instructions, through editable HTML elements. Just click on the text fields and edit to your required details. 

Don't forget to press `F11` to go into full screen mode.







