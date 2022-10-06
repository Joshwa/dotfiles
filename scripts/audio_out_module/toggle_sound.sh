#!/usr/bin/env sh


# find current sink

curSink=$(pacmd list-sinks | grep -oP '(?<=\* index: )[0-9]+')

if [ "$curSink" -eq 2 ];
then
    pacmd set-default-sink 3 && echo  > /home/josh/scripts/audio_out_module/audio
else
    pacmd set-default-sink 2 && echo  > /home/josh/scripts/audio_out_module/audio
fi
