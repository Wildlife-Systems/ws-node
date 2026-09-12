# ws-node

This software is used to setup a Raspberry Pi as an Wildlife Systems node.

## Installing the software

[Add the WildlifeSytems APT repository to your system](https://wildlife.systems/apt-configuration.html)

Install ws-node.

```
sudo apt update
sudo apt install ws-node
```

## Node metadata

`/etc/ws/node.json` records what the node is deployed as, which nothing else on
the machine can know. All fields are optional and the file itself is optional:
a node without one behaves exactly as before.

```json
{
  "deployment_id": "unp-pond-01",
  "site_name": "Urban Nature Project — Pond Zone",
  "valid_from": "2026-03-14T09:00:00Z",
  "location_source": "survey",
  "vertical_datum": "EGM96"
}
```

| Field | Meaning |
|---|---|
| `deployment_id` | which deployment this node belongs to. `sr` copies it into every sensor reading |
| `site_name` | human-readable location name |
| `valid_from` | when this deployment started, RFC 3339 UTC |
| `location_source` | how the position in `/etc/geolocation` was obtained, e.g. `survey`, `gps`, `estimate` |
| `vertical_datum` | datum the altitude is measured against, e.g. `EGM96` |

An example is installed at
`/usr/share/doc/ws-node/examples/node.json`. It is not installed to `/etc/ws/`
because a shipped file there would become a conffile carrying a placeholder
deployment onto every node.

This is deliberately separate from `/etc/geolocation`, which holds the node's
position and is owned by `pi-geo`. Position is a property of the machine;
deployment identity is a property of the project. A node can be moved without
being redeployed, and redeployed without being moved.

## Development

- Initial development of the node software was done as part of the Leverhulme Trust funded [Automated Acoustic Observatories](https://ebaker.me.uk/aao) project at the [University of York](https://york.ac.uk).
- Additional development was undertaken as part of the Urban Nature Project at the [Natural History Museum](https://www.nhm.ac.uk), London.
