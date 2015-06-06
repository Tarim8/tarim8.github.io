Tarim Utilities
===============



[Poll][]
--------

[Poll]: https://github.com/tarim8/poll

  A Linux user command to monitor GPIO pins.
  Sends the contents of a special file (with optional text) to stdout.
  Useful for feeding changes in the state of switches or other hardware into your Python, Node JS, C++, AWK or whatever programming language floats your boat.
  Useful for the Raspberry Pi and other embedded Linux systems that use the /sys/class/gpio style files.
  GPIO pins can be set up with Gordon Hendersen's gpio control system in his excellent [Wiring Pi](http://wiringpi.com/) project.

### Example

    poll --debounce 20 --unique +"EncA %l\n" /sys/class/gpio/gpio23/value +"EncB %l\n" /sys/class/gpio/gpio24/value

  Will give nice clean debounced values from a couple of switches attached to GPIO pins 23 and 24.

  ![C++](images/cpp.png "C++")
  ![Linux](images/tux.png)
  [![Raspberry Pi](images/pi.png)][Pi]

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



[Session][]
-----------

[Session]: https://github.com/tarim8/session

  A Bash script to launch commands with their own process group id.
  This allows them to be terminated cleanly.
  A kind of lightweight daemon control.

### Example

   omxplayer on the Raspberry Pi will create a subprocess to do the main work.  So:

    session /tmp/omx.pgid omxplayer video.mp4

  Allows the video to be terminated cleanly by:

    session -k /tmp/omx.pgid

  ![Bash](images/bash.png)
  ![Linux](images/tux.png)
  [![Raspberry Pi](images/pi.png)][Pi]

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



[Waiter][]
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

  ![C++](images/cpp.png)
  ![Arduino](images/arduino.png)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


  
[Pi]: http://www.raspberrypi.org
