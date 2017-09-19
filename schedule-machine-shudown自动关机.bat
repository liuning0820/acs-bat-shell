set /p input=Please input the time in seconds to shut down the PC:
call shutdown -s -t %input%
