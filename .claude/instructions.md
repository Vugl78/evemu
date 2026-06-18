# EVEmu Crucible — Claude Fork

This is a personal fork of EVEmu Crucible with AI-assisted development.

## Code Style
- C++17, GNU extensions (`-std=gnu++17`)
- Spaces, no tabs
- 4-space indentation
- Follow existing patterns in the codebase

## Project Structure
- `src/eve-server/` — main server code
- `src/eve-core/` — core utility classes
- `src/eve-common/` — shared game logic
- `sql/` — database migrations
- `utils/` — helper scripts
- `doc/` — documentation and changelog

## Key Files
- `src/eve-server/system/DestinyManager.cpp` — movement, warp, orbit, follow
- `src/eve-server/Client.cpp` — client connection
- `src/eve-server/ship/Ship.cpp` — ship handling
- `src/eve-server/system/SystemManager.cpp` — system management
- `src/eve-server/dungeon/DungeonMgr.cpp` — anomaly/dungeon spawning

## Build
```bash
docker compose build
docker compose up -d
```

## Debug
Logs are in docker container. Use:
```bash
docker logs -f server
```

## Priorities
1. Movement physics (warp, orbit, bump)
2. NPC AI and combat
3. Drones
4. Wormholes
5. Anomalies
