#!/bin/bash

confs=(
    '%%AGENT_HTTP%%=falcon-agent:1988'
    '%%AGGREGATOR_HTTP%%=falcon-aggreator:6055'
    '%%GRAPH_HTTP%%=falcon-graph:6071'
    '%%GRAPH_RPC%%=falcon-graph:6070'
    '%%HBS_HTTP%%=falcon-hbs:6031'
    '%%HBS_RPC%%=falcon-hbs:6030'
    '%%JUDGE_HTTP%%=falcon-judge:6081'
    '%%JUDGE_RPC%%=falcon-judge:6080'
    '%%NODATA_HTTP%%=falcon-nodata:6090'
    '%%TRANSFER_HTTP%%=falcon-transfer:6060'
    '%%TRANSFER_RPC%%=falcon-transfer:8433'
    '%%REDIS%%=falcon-redis:6379'
    '%%MYSQL%%=root:test123456@tcp(falcon-mysql:3306)'
    '%%PLUS_API_DEFAULT_TOKEN%%=default-token-used-in-server-side'
    '%%PLUS_API_HTTP%%=falcon-api:8080'
 )

configurer() {
    for i in "${confs[@]}"
    do
        search="${i%%=*}"
        replace="${i##*=}"

        uname=`uname`
        if [ "$uname" == "Darwin" ] ; then
            # Note the "" and -e  after -i, needed in OS X
            find ./out/*/config/*.json -type f -exec sed -i .tpl -e "s/${search}/${replace}/g" {} \;
        else
            find ./out/*/config/*.json -type f -exec sed -i "s/${search}/${replace}/g" {} \;
        fi
    done
}
configurer
