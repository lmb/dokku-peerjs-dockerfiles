#!/bin/sh

peerjs -d --port 9000 --key "$PEERJS_KEY" | gawk '{ print strftime("%Y-%m-%d %H:%M:%S"), $0; fflush(); }'