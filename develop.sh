#!/bin/bash
rm -rf build
make
make install
(trap 'kill 0' SIGINT; php -S localhost:8000 -t dist/public & php -S localhost:8001 -t ../files) #https://code.whatever.social/questions/3004811/how-do-you-run-multiple-programs-in-parallel-from-a-bash-script