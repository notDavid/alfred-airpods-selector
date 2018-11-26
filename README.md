# alfred-airpods-selector
Use Alfred to Switch Between AirPods and Default Audio Sources on macOS

## deps

Install [Alfred](https://www.alfredapp.com).

Install [switchaudio-osx](https://github.com/deweller/switchaudio-osx):

```
$ brew install switchaudio-osx
```

## setup and configuration

1. Import the Alfred [alfred-airpods-selector](https://github.com/notDavid/alfred-airpods-selector/blob/master/AirPods%20Selector.alfredworkflow?raw=true) workflow by double-clicking the workflow file after downloading it.
1. Find your audio device names:

        $ SwitchAudioSource -a

1. In the Alfred workflow tab update the bash script (2nd block in workflow) with the names of your audio devices from step #2 as well as the path to where SwitchAudioSource was installed:

        airpods="David’s AirPods"       # <--- change this to your AirPods name
        switch="/usr/local/bin/SwitchAudioSource"

_**Warning:** Sometimes curly apostrophes or curly double quotes can get you into trouble_

## usage

In Alfred type the following:

> To Toggle Airpods on/off:
    `airpods`

> To Enable AirPods:
> `airpods on` or `airpods blah`

> To Disable AirPods:
> `airpods off` or `airpods 0`

*Note: You can type anything after 'airpods' except 'off' to enable the AirPods audio source.*


