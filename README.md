# Camera TD Hub

A feature-rich hub for **Cameraman Tower Defense** on Roblox, with a custom UI built on [Lumen](https://github.com/fvfg2011/Lumen).

## Installation

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/fvfg2011/Cameraman-TD/refs/heads/main/CameraTD_Hub.release.lua"))()
```

Paste this into your executor and run it while in the game.

## Features

### Lobby
- Map, difficulty, modifier and player-count selection
- Auto Join & Start
- Auto Summon (Basic/Mythic crates, configurable amount and delay)
- Auto Buy Crates
- Auto Sell units from inventory

### Match
- Pre-match vote: difficulty + Auto Vote Difficulty
- Auto Skip Waves
- Auto Speed Scale (1x / 1.5x / 2x)
- Auto Sell All Farm on Wave, with configurable delay
- After Match action: None / Replay / Return
- **Replay** sub-tab: automated match replay handling

### Auto Play
- Auto Place towers (with placement range control and range preview)
- Auto Upgrade towers
- Configurable delay between actions

### Webhook
- Discord webhook reporting for match results
- Telegram bot reporting

### Misc
- Anti-AFK
- Remove Visual Effects (Normal / Full) for better performance
- **Checks** sub-tab: internal integrity/compatibility checks
- Settings: interface language, panel behavior (dock position, auto-collapse timers)

### Stats (under Macros)
- Session stats: matches, wins, losses, win rate
- Matches/hour, Coins/hour, Candy/hour, Exp/hour — settle into a stable rate the longer you play
- Total Coins / Candy / Exp / Crates earned this session
- Stats persist between teleports and can be reset at any time

## Interface

- Toggle the UI with **Right Shift**
- Multi-language support (English / Russian, more can be added)
- Dockable panel (left/right/top/bottom) with collapsible icon rail

## Requirements

- A Luau-capable Roblox executor
- Playing **Cameraman Tower Defense**

## Notes

- Settings, macros and stats are saved locally on your device (when your executor supports file access) and are kept between sessions and teleports.
- Feedback and bug reports are welcome via Issues.

first ever script build on Lumen Lib by Fvfg2011
