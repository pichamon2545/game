# Human timing tasks
## Check this out!
We are hosting the tasks on cognition.run. You can try the tasks out following the links below:
- [Mouse Beginner](https://mhpzrl3zeh.cognition.run)
- [Mouse Intermediate](https://igho7pugeo.cognition.run)
- [Mouse Expert](https://vjveqwtp5h.cognition.run)
- [Psychology experiment](https://4bdfgc8ohd.cognition.run)
## Getting started
If you wish to run the experiment from your computer, you will need the [jsPsych](https://github.com/jspsych/jsPsych/tree/main) plugin for javascript. You need to have the `jsPsych` and `tones` folders in the same directory as the `.html` file you wish to run. The directory structure should look like this:
```markdown
📂 MyExperiment
--  📄 experiment.html
--  📂 jsPsych
--  📂 tones
```
To get the jsPsych folder, download `dist archive (zip)` in [jsPsych's latest release](https://github.com/jspsych/jsPsych/releases). Create a folder called `jsPsych` in the same directory as the `.html` you want to run. Then, copy the contents of the `dist` folder in the downloaded archive into the `jsPsych` folder. See steps 1 and 2 in [jsPysch's hello world tutorial](https://www.jspsych.org/7.3/tutorials/hello-world/#option-2-download-and-host-jspsych) for more detailed instructions.

### Important
I modified 4 files in the jsPsych folder: `jspsych.js`, `jspsych.css`, `plugin-audio-keyboard-response.js`, and `plugin-html-keyboard-response.js`. I also added 2 extra plugins: `plugin-audio-keyboard-response-persist.js` and `plugin-html-keyboard-response-persist.js`. The changes are summarized in the table below:
| File | Change | Description |
|------|--------|-------------|
|[jspsych.js](https://github.com/pichamon2545/game/blob/main/jsPsych/jspsych.js)|Modified| Record the absolute time at the end of each page and the absolute time of each key press |
|[jspsych.css](https://github.com/pichamon2545/game/blob/main/jsPsych/jspsych.css)|Modified| Add .topright class to position participants' live total reward|
|[plugin-audio-keyboard-response.js](https://github.com/pichamon2545/game/blob/main/jsPsych/plugin-audio-keyboard-response.js)|Modified| Record absolute time of each press|
|[plugin-html-keyboard-response.js](https://github.com/pichamon2545/game/blob/main/jsPsych/plugin-html-keyboard-response.js)|Modified| Record absolute time of each press|
|[plugin-audio-keyboard-response-persist.js](https://github.com/pichamon2545/game/blob/main/jsPsych/plugin-audio-keyboard-response-persist.js)|Added new file| Record all presses on each page (both in absolute time and time relative to the cue)|
|[plugin-html-keyboard-response-persist.js](https://github.com/pichamon2545/game/blob/main/jsPsych/plugin-html-keyboard-response-persist.js)|Added new file| Record all presses on each page (both in absolute time and time relative to the cue)|

To run the mouse tasks on your computer, please download the files above and add them to your `jsPsych` folder (replacing existing files of the same name).

## Mouse tasks
Each version consists of beginner-, intermediate-, and expert-level tasks. The tasks are designed to mirror [Allsion's mouse training tasks](https://elifesciences.org/articles/62583#s4).

Replacements:
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
### V2 (06/22/2023)
- Encourage pressing after reward tone in beginner
- Show money bag emoji for longer (300ms) 
- Money bag emoji shows for the whole 300ms even if the subject presses very close to 7000ms `(-> in beginner: restructured show_nickel and ITI, added nickel_shown)`
#### V2.1 (06/22/2023)
- Added progress bar to all levels
- Added instructions in the beginner level. Inform participants of the level they are on before beginning each level.
- Added a debriefing page (total reward earned in that stage)
### V3 (06/29/2023)
- Enter fullscreen at the start of the experiment, exit fullscreen at the end of the experiment
- Show the current reward earned in each stage at the top right corner of the screen
- Add a 300ms gap between the end of instructions and the beginning of the actual task
- Record absolute time for all key presses and events such as lamp off and cues (used in raster plot)
- Fixed the beginner task to record the correct trial number

## Online psychology experiment
### V1
- Welcome page
- Instructions page
- Trials (fixation -> **visual** start cue -> page showing their response time)
- Debrief page (how many trials the subject got right, total reward earned)
- not thoroughly commented
### V2 (06/15/2023)
- Added another instruction page to clarify the fixation
- Random fixation duration (0.4-1.5s uniform distribution, like the mouse task)
- Added changing background colors to match the mouse tasks (trial - black, ITI - white)
- Added audio (3300 Hz) to start cue
- Added audio feedback cues (440 Hz, 5050 Hz, 131 Hz) and money bag emoji for correct trials
- Verbal feedback after each trial (too early/correct/too late)
- Record the trial number for each trial
### V3 (06/26/2023)
- Enter fullscreen at the start of the experiment, exit fullscreen at the end of the experiment
- Show the current reward earned in each stage at the top right corner of the screen
- Added progress bar
- Added practice runs to familiarize players
- Record absolute time for all key presses
