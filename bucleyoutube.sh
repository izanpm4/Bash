#!/bin/bash

video_url=https://www.youtube.com/watch?v=TtvwoNnX02o
for i in {1..10}; do
	xdg-open "$video_url"
done

exit 0 
