# ws-node

This software is used to setup a Raspberry Pi as an Wildlife Systems node.

## Installing the software

```
wget https://github.com/Wildlife-Systems/ws-node/releases/download/1.0.0/ws-node_1.0.0_all.deb
dpkg -i ws-node_1.0.0_all.deb
```

The installation script will install the software required to configure a node, and ask the user if they wish to configure the node.

If the node is not configured during install it can be configured by running `ws-setup` from the terminal.

## Development

- Initial development of the node software was done as part of the Leverhulme Trust funded [Automated Acoustic Observatories](https://ebaker.me.uk/aao) project at the [University of York](https://york.ac.uk).
- Additional development was undertaken as part of the Urban Nature Project at the [Natural History Museum](https://www.nhm.ac.uk), London.
