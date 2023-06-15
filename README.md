# Human timing tasks
## Getting started
I'm using the [jsPsych](https://github.com/jspsych/jsPsych/tree/main) plugin for javascript. To run the experiments in this repository, you need to have the `jsPsych` and `tones` folders in the same directory as the `.html` file you wish to run. The directory structure should look like this:
```markdown
📂 MyExperiment
--  📄 experiment.html
--  📂 jsPsych
--  📂 tones
```
To get the jsPsych folder, download `dist archive (zip)` in [jsPsych's latest release](https://github.com/jspsych/jsPsych/releases). Create a folder called `jsPsych` in the same directory as the `.html` you want to run. Then, copy the contents of the `dist` folder in the downloaded archive into the `jsPsych` folder. See steps 1 and 2 in [jsPysch's hello world tutorial](https://www.jspsych.org/7.3/tutorials/hello-world/#option-2-download-and-host-jspsych) for more detailed instructions.
### Important
To run the mouse tasks, you will need two additional plugins that are not in jsPsych's `dist` folder. Please download the plugins [plugin-audio-keyboard-response-persist.js](https://github.com/pichamon2545/game/blob/main/jsPsych/plugin-audio-keyboard-response-persist.js) and [plugin-html-keyboard-response-persist.js](https://github.com/pichamon2545/game/blob/main/jsPsych/plugin-html-keyboard-response-persist.js) in this repository's `jsPsych` folder and add them to your `jsPsych` folder. These plugins allow us to listen to and log all key presses within the trial duration.

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
