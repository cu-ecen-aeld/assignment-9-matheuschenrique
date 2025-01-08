#! /bin/sh

case $1 in
    start)
        echo "Starting misc-modules"
        insmod /lib/modules/$(uname -r)/extra/hello.ko
        module_load faulty
        ;;
    stop)
        echo "Stopping misc-modules"
        rmmod hello
        module_unload faulty
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac

exit 0