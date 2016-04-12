Utilities
=========


[Poll][]        ![Linux](images/tux.png) [![Raspberry Pi](images/pi.png)][Pi] ![C++](images/cpp.png "C++")
--------

  [Poll]: https://github.com/tarim8/poll

  A Linux user command to monitor GPIO pins.
  Sends the contents of a special file (with optional text) to stdout.
  Useful for feeding changes in the state of switches or other hardware into your Python, Node JS, C++, AWK or whatever programming language floats your boat.
  Useful for the Raspberry Pi and other embedded Linux systems that use the /sys/class/gpio style files.
  GPIO pins can be set up with Gordon Hendersen's gpio control system in his excellent [Wiring Pi](http://wiringpi.com/) project.

### Example

    poll --debounce 20 --unique +"EncA %l\n" /sys/class/gpio/gpio23/value +"EncB %l\n" /sys/class/gpio/gpio24/value

  gives nice clean debounced values from a couple of switches attached to GPIO pins 23 and 24.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



[Session][]     [![Raspberry Pi](images/pi.png)][Pi] ![Linux](images/tux.png) ![Bash](images/bash.png)
-----------

[Session]: https://github.com/tarim8/session

  A Bash script to launch commands with their own process group id.
  This allows them to be terminated cleanly.
  A kind of lightweight daemon control.

### Example

   omxplayer on the Raspberry Pi will create a subprocess to do the main work.  So:

    session /tmp/omx.pgid omxplayer video.mp4

  allows the video to be terminated cleanly by:

    session -k /tmp/omx.pgid

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



[Connected][]     ![Linux](images/tux.png) ![Bash](images/bash.png)
-----------

[Connected]: https://github.com/tarim8/connected

  Connect to line based services like computer emulators (multics) or games
  (like adventure, or mud) with Bash command line editing and history.

### Example

  connect to SVE's Multics emulator:

    connected telnet sve-multics.duckdns.org 6180

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



[Anyonein][]        ![PHP](images/php.png)
--------

  [Anyonein]: https://github.com/tarim8/anyonein

  Anyonein is designed to report how long ago various sensors were last activated.

  Intended for use in communal spaces, like Hackspaces, where it's handy for
  people to be able to see if any one is in, or when they were last in.

  Anyonein simply logs the time a sensor was last activated through an HTTP
  interface.  It doesn't do anything fancy like processing sensor data which
  should be done locally by the sensor and its controller.

### Example

    http://example.com/anyonein/
  will display the current state of the sensors and refresh the page every two minutes.

    http://example.com/anyonein/?sensor=light&format=json&show=display
  will update the light sensor and return the sensor status as a json object.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



[Waiter][]      ![Arduino](images/arduino.png) ![C++](images/cpp.png)
----------

  [Waiter]: https://github.com/tarim8/Waiter

  A class for Arduino to make it easier to wait for an amount of time without going blocked (kind of essential on a single threaded device like an Arduino).

### Example

    Waiter timer;
    const unsigned int DELAY = 1000;

    void function poll() {
        if( timer.wait( DELAY ) ) {
            digitalWrite( LED, !digitalRead( LED ) );
        }
    }

  Creates a poll() routine which can be continually called (and not block) to flash an LED.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -





Projects
========


[Totems][]       ![Arduino](images/arduino.png) ![HTTP](images/http.png) ![C++](images/cpp.png)
---------

[Totems]: https://github.com/tarim8/totems

  Wicker dolls carried by the audience in [Raucous](http://www.raucous.org.uk/) Stick House production had their own heartbeat and could become cold during the production.

  The dolls contained small Arduino's (Leosticks), a remote control FM receiver, vibration motor and a Peltier heat exchanger.
  Control is via an Arduino connected to an FM transmitter running a very rudimentary HTTP server which reads a submitted form.
  In this case the Arduino was connected to a laptop but could equally well have a WiFi shield.

### Notes
  The vibration motor works well as a heartbeat.
  The HTTP control system is effective and could easily be connected to other control systems.

  The FM signalling worked reasonably but may have range problems in certain venues.
  It is probably worth replacing this with a Zigbee mesh-net system even though this would take up slightly more space in the dolls.

  The Peltier's don't go cold enough for the audience members to notice.
  Trying to scale them up would involve too many power and heat dissipation problems to be practical.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



[Pi]: http://www.raspberrypi.org
