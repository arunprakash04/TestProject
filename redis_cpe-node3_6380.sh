#!/bin/bash

#Date: 2019Sep20
#Purpose: Email output of CPE count less than value

VALUE=$(/usr/local/bin/redis-cli -h 10.0.1.117 -p 6380 keys cpe:* | wc -l)

	if [ "$VALUE" -le 1000 ]; then
	echo CPE count for PORT 6380 is $VALUE | mail -s "node3.cluster1.redis.owler.internal" arunprakash@owler-inc.com, thiyagarajan@owler-inc.com, tsheriff@owler-inc.com, oncall@owler.com;

	fi
