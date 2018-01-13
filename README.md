# wx-message-pusher-workflow
An Alfred workflow that push messages to WeChat.

## Overview
- **Send message to WeChat in Alfred**;
- ![](http://7xl3pd.com1.z0.glb.clouddn.com/2018-01-13-send-messsage-to-wechat.png)

- **Receive message in WeCaht**;
- ![](http://7xl3pd.com1.z0.glb.clouddn.com/2018-01-13-wechat-receive-message.png)

## Principle
- [WeChat Enterprise API](https://work.weixin.qq.com/api/doc#10167)
- [Alfred workflow](http://allenwu.itscoder.com/how-to-write-a-workflow-for-mac)

## Install Step

1. Register a WeChat enterprise account; [Click me to register](https://work.weixin.qq.com/wework_admin/register_wx?from=loginpage)
2. Login and get your **CorpId** in [here](https://work.weixin.qq.com/wework_admin/frame#profile);
3. Create a customer app and get your **AgentId** and **Secret** in app detail;
4. Download the [wx-message-pusher.alfredworkflow](https://github.com/archerda/wx-message-pusher-workflow/blob/master/wx-message-pusher.alfredworkflow) file & double click it to install in Alfred;
5. Open Alfred settings -> Workflows, right click "wx-message-pusher" and select "Open in finder";
6. Open "push.sh" and repleace YOUR_CORP_ID/YOUR_AGENT_ID/YOUR_APP_SECRET with yours which you have got in step 2 and step 3, save it;
7. Open Alfred and type "push TestMessage", your WeChat would receive a message if everything is right before;
8. Enjoy it.
