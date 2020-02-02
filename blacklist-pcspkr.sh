#! /usr/bin/env bash

# Parameters.
input='no-beep.conf'
output='/etc/modprobe.d/no-beep.conf'
module='pcspkr'
# End parameters.

if ! id | grep sudo > /dev/null
then
    printf "Warning: you do not have sudo privileges.\n" 1>&2
fi

if ! test -d '/etc/modprobe.d/'
then
    if ! sudo mkdir -p '/etc/modprobe.d/'
    then
        printf "Error: could not create directory /etc/modprobe.d/\n" 1>&2
        exit 1
    fi
fi

if test -f "$output"
then
    printf "Error: '$output' already exists.\n" 1>&2
    exit 1
fi

if ! grep "$module" '/etc/modules'
then
    printf "Warning: module '$module' is not loaded.\n" 1>&2
else
    # initstate: live,
    if ! test 'live' = "$(cat /sys/module/pcspkr/initstate)"
    then
        printf "Warning: initstate is not 'live' for '$module'.\n" 1>&2
    fi
fi

if sudo cp "$input" "$output"
then
    if sudo modprobe --remove --verbose "$module"
    then
        exit 0
    else
        printf "Could not remove module $module. Try rebooting to make changes.\n" 1>&2
        exit 0
    fi
else
    printf "Error: could not write to $output\n" 1>&2
    exit 1
fi
