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
- Auto Buy Crates (Turkey Event crate included)
- Auto Claim Turkey Pass quests/tiers (new `Battlepass2` event pass)
- Auto Sell units from inventory
- **Trade Value** sub-tab: reads your offer and the other side's offer during a live trade (items + gems), shows a give/get comparison and a good/bad/even verdict
  - Prices auto-refresh from the web every 20 minutes (self-hosted price cache)
  - **Trade Overlay Panel (beta)**: optional floating panel shown above the Trade window while you're actually trading with someone, follows the hub's color theme

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
- Color theme picker (also applied to the Trade Overlay panel)
- Anti-AFK
- Auto Return From Trading Plaza (independent toggle — won't interrupt you mid-trade like it used to when tied to Auto Playback)
- Remove Visual Effects (Normal / Full) for better performance
- **Checks** sub-tab: internal integrity/compatibility checks
- Settings: interface language, panel behavior (dock position, auto-collapse timers)

### Stats (under Macros)
- Session stats: matches, wins, losses, win rate
- Matches/hour, Coins/hour, Turkey Legs/hour, Exp/hour — settle into a stable rate the longer you play
- Total Coins / Turkey Legs / Exp / Crates earned this session
- Stats persist between teleports and can be reset at any time

## Interface

- Toggle the UI with **Right Shift**
- Multi-language support (English / Russian, more can be added)
- Dockable panel (left/right/top/bottom) with collapsible icon rail

## Requirements

- A Roblox executor
- Playing **Cameraman Tower Defense**

## Notes

- Settings, macros and stats are saved locally on your device (when your executor supports file access) and are kept between sessions and teleports — saved instantly on every change, not just on exit.
- Trade Value prices come from a small self-hosted price cache that refreshes periodically from a [official value list](https://cameraman-td.vaultedvaluesx.com/value-list); if it's ever unreachable, the hub falls back to the last known prices instead of breaking.
- Feedback and bug reports are welcome via Issues.

first ever script build on Lumen Lib by Fvfg2011
