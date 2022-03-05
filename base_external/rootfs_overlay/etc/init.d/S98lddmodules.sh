#!/bin/sh 
 
case "$1" in 
	start) 
		echo "Loading custom module"
        /usr/bin/module_load faulty
		/usr/bin/scull_load
        modprobe hello
		;; 
	stop) 
		echo "Unloading custom module" 
        /usr/bin/scull_unload
        /usr/bin/module_unload faulty
		rmmod hello
		;; 
	*) 
		echo "Usage: $0 {start|stop}" 
		exit 1 
esac 
 
exit 0