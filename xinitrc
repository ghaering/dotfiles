#!/bin/sh

eval $(ssh-agent)
exec cinnamon-session
