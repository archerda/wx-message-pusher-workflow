#!/bin/bash
# Bash strict mode, see http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

export LANG=C

CorpID=YOUR_CORP_ID
Secret=YOUR_APP_SECRET
AgentId=YOUR_AGENT_ID

GURL="https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=$CorpID&corpsecret=$Secret"
Gtoken=$(/usr/bin/curl -s -G $GURL | awk -F\" '{print $10}')
PURL="https://qyapi.weixin.qq.com/cgi-bin/message/send?access_token=$Gtoken"
MSG="$@"
/usr/bin/curl --data-ascii '{"touser":"@all","msgtype":"text","agentid":"'${AgentId}'","text":{"content":"'${MSG}'"},"safe":"0"}' --url ${PURL}
echo
