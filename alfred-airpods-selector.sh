airpods="David’s AirPods"       # <--- change this to your AirPods name

toggle=$1
switch="/usr/local/bin/SwitchAudioSource"
mic="Built-in Microphone"
output="Built-in Output"

function set_off {
  $switch -t input -s "$mic" > /dev/null 2>&1 && $switch -t output -s "$output" > /dev/null 2>&1
  echo "Disabled"
}

function set_on {
  $switch -t input -s "$airpods" > /dev/null 2>&1 && $switch -t output -s "$airpods" > /dev/null 2>&1
  echo "Enabled"
}

if [ "$toggle" = "" ]; then
  current=$("$switch" -c)
  if [ "$current" = "$airpods" ] ; then
    set_off
  else
    set_on
  fi
elif [ "$toggle" = "off" ] || [ "$toggle" = "0" ] ; then
    set_off
else
    set_on
fi
