#!/bin/sh

peerjs -d --port 9000 --key "$PEERJS_KEY" | awk '{ print strftime("%Y-%m-%d %H:%M:%S"), $0; fflush(); }'