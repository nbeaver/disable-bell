=====================
Disable audible bell.
=====================

This is a script to universally and persistently disable the audible bell
provided by the Linux ``pcspkr`` module,
also known as the
"console beep",
"hardware beep",
"system bell",
"internal speaker",
or "`PC speaker`_".

.. _PC speaker: https://en.wikipedia.org/wiki/PC_speaker

It copies the `<no-beep.conf>`_ file to ``/etc/modprobe.d/``.

Note that this requires ``sudo`` permissions.
If you do not have them, use this::

    xset b off

to turn it off temporarily,
and add it to your ``~/.profile``
so that it is run every time you log in.

----------
Motivation
----------

    Whenever I’m poking around in a virtual terminal and I hit ``Tab`` that
    damn beep scares the bejesus out of me.

https://mjanja.ch/2013/01/blacklisting-pcspkr/

    One thing that has often annoyed me about most typical Linux installations
    I've seen has been the annoying frequency of console beeps.

https://debian-administration.org/article/110/Removing_annoying_console_beeps

    No matter what I try in order to disable the beep, it always comes back.
    Most commonly found when scrolling on emacs or matlab. You can't imagine
    the hatred that I have for this beep.

https://forums.opensuse.org/showthread.php/474371-This-beep-is-annoying-the-hell-out-of-me

    It is very annoying to hear loud beeps at home especially at night or when
    listening to music.

https://blog.sleeplessbeastie.eu/2012/12/28/debian-how-to-turn-off-the-system-bell/

    Listening to the PC Speaker beeps via headphones is very close to a feeling
    of hitting your head with a hammer. Even without headphones this beeping
    bell sound is very annoying.

https://linuxconfig.org/turn-off-beep-bell-on-linux-terminal

--------------------
Other relevant links
--------------------

http://unix.stackexchange.com/questions/152691/how-to-disable-beep-sound-in-linux-centos-7-command-line

http://www.thinkwiki.org/wiki/How_to_disable_the_pc_speaker_%28beep!%29

-------
License
-------

This project is licensed under the terms of the `MIT license`_.

.. _MIT license: LICENSE.txt
