# Human timing tasks
## Getting started
I'm using the [jsPsych](https://github.com/jspsych/jsPsych/tree/main) plugin for javascript. To run the experiments in this repository, you need to have the `jsPsych` and `tones` folders in the same directory as the `.html` file you wish to run. The directory structure should look like this:
```markdown
📂 MyExperiment
--  📄 experiment.html
--  📂 jsPsych
--  📂 tones
```
## Mouse tasks
Each version consists of beginner-, intermediate-, and expert-level tasks. The tasks are designed to mirror [Allsion's mouse training tasks](https://elifesciences.org/articles/62583#s4).   

Some replacements:
- licks -> key presses
- houselamp turning on and off -> screen background color switching between white and black
- LED flash -> red dot flash in the middle of the screen
- juice reward -> a money bag emoji
### V1
- Welcome page, requires a key press to proceed (jsPsych needs a key press to activate their audio plugins)
- Screen background color reflects the trial period (black) and ITI (white)
- Audio cues and duration match the mouse training tasks
- Money bag emoji appears for 200ms
- Each trial records the trial number and all key presses in that trial (milliseconds after the cue)
- not thoroughly commented
## Online psychology experiment
### V1
- Welcome page
- Instructions page
- Trials (fixation -> **visual** start cue -> page showing their response time)
- Debrief page (how many trials the subject got right, total reward earned)
- not thoroughly commented
