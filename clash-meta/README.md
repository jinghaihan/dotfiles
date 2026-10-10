# ClashX Meta

[config.yaml](./config.yaml) contains shared proxy settings:

| Setting | Value |
| --- | --- |
| HTTP / SOCKS proxy | `127.0.0.1:7890` |
| Controller | `127.0.0.1:9090` |
| LAN access | Disabled |
| Mode | Rule |

Merge these settings into the profile selected in ClashX Meta. Keep the profile's
nodes, DNS settings, and routing rules. Editing only the default `config.yaml`
does not update another selected profile.

## Menu bar icon

[menuImage.png](./menuImage.png) is the original ClashX Pro icon. From the
repository root, install it and then restart ClashX Meta:

```sh
mkdir -p ~/.config/clash.meta
cp clash-meta/menuImage.png ~/.config/clash.meta/menuImage.png
```

Subscriptions and node credentials are kept outside this repository.
