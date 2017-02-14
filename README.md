# docker-wine-coolq

docker-wine-coolq 可以使你通过 Wine 在 Docker 容器中运行 酷Q Air 或 酷Q Pro。

即使该 dockerfile 仓库使用 GPL 发布，其中下载的软件仍然遵循其最终用户使用许可协议，请确认同意协议后再进行下载使用。

## 下载使用

如果你在服务器上使用 `docker` 或者和 docker 兼容的服务，只需执行：

```bash
docker pull coolq/wine-coolq
docker run -p 9000:9000 coolq/wine-coolq
```

即可运行一个 wine-coolq 实例。运行后，访问 `http://你的IP:9000` 可以打开一个 VNC 页面，输入 `MAX8chars` 作为密码后即可看到一个酷Q Air 已经启动。

## 环境变量

在创建 docker 容器时，使用以下环境变量，可以调整容器行为。

* **`VNC_PASSWD`** 设置 VNC 密码。注意该密码不能超过 8 个字符。
* **`COOLQ_ACCOUNT`** 设置要登录酷Q 的 QQ 帐号。在第一次手动登录后，你可以勾选“快速登录”功能以启用自动登录，此后， docker 容器启动或酷Q 异常退出时，便会自动为你登录该帐号。
* **`COOLQ_URL`** 设置下载酷Q 的地址，默认为 `http://dlsec.cqp.me/cqa-tuling`，即酷Q Air 图灵版。
