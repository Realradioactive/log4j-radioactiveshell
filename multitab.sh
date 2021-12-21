#!/bin/bash
# RealRadioactive log4j Shell Generator
# Coded and edit by: https://github.com/Realradioactive

gnome-terminal --tab --geometry=40x20+000+050 -- bash -ic "export TITLE_DEFAULT='title 1'; /bin/bash starttestserver.sh; exec bash;"
gnome-terminal --tab --geometry=40x20+000+850 -- bash -ic "export TITLE_DEFAULT='title 2'; /bin/bash log4jserver.sh; exec bash;"
gnome-terminal --tab --geometry=40x20+1000+050 -- bash -ic "export TITLE_DEFAULT='title 3'; /bin/bash pythonserver.sh; exec bash;"
gnome-terminal --tab --geometry=40x20+1000+850 -- bash -ic "export TITLE_DEFAULT='title 3'; //bin/bash lissen.sh; exec bash;"
