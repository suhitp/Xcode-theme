<p align="center">
  <h1>Xcode Themes</h1>
  <p>Twelve themes for Xcode, eight dark and four light. One font, one naming scheme.</p>
</p>

<!--
PREVIEW — after running ./scripts/screenshot.sh, uncomment this block:

<p align="center">
  <img src="preview/Xcode Dark Knight Midnight.png" width="49%" alt="Xcode Dark Knight Midnight">
  <img src="preview/Xcode Dark Ruby Dusk Ember.png" width="49%" alt="Xcode Dark Ruby Dusk Ember">
  <br><br>
  <img src="preview/Xcode Light Lagoon Zenith.png" width="49%" alt="Xcode Light Lagoon Zenith">
  <img src="preview/Xcode Light Prism Zenith.png" width="49%" alt="Xcode Light Prism Zenith">
</p>
-->

## Preview

Theme screenshots are generated from Xcode itself, not mocked up. To produce them:

```sh
cp Dark/*.xccolortheme Light/*.xccolortheme \
   ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
./scripts/screenshot.sh
```

It walks the theme list, waits for you to select each one in Xcode, and captures
your window. Then uncomment the block at the top of this file.

## Themes

### Dark

| Theme | Backdrop | Character |
| --- | --- | --- |
| **Ember Dusk** | `#0E0E0E` | orange strings, teal types |
| **Ember Midnight** | `#10101A` | navy backdrop, orange strings |
| **Honey Dusk** | `#101010` | amber strings, cyan types |
| **Knight Dusk Cobalt** | `#101010` | cyan-first identifiers |
| **Knight Dusk Moss** | `#101010` | green-first identifiers |
| **Knight Midnight** | `#070917` | deep navy, jade identifiers |
| **Knight Midnight Ember** | `#070911` | deep navy, orange keywords |
| **Ruby Dusk Ember** | `#101010` | red strings, pink keywords |

### Light

| Theme | Backdrop | Character |
| --- | --- | --- |
| **Cobalt Zenith** | `#FFFFFF` | blue identifiers |
| **Lagoon Zenith** | `#FFFFFF` | teal identifiers |
| **Prism Dawn** | `#F9F9F9` | muted spectrum, brown comments |
| **Prism Zenith** | `#FFFFFF` | full spectrum, brown comments |

### Naming

Every theme is `<Mode> <Accent> <Backdrop>` — no numbers, no suffixes to decode.

- **Accent** — what glows in it: *Ember, Honey, Ruby, Moss, Cobalt, Lagoon, Prism*
- **Backdrop** — the sky behind it: *Dusk* `#101010`, *Midnight* navy black, *Zenith* `#FFFFFF`, *Dawn* `#F9F9F9`

Two families run through the dark set: **Knight** (One Dark's deep-navy variant,
amber macros, magenta regex) and **Ember** (slate comments, warm orange strings).

## Install

1. Install the font — every theme uses **JetBrainsMono Nerd Font**, and without it
   Xcode quietly falls back to a system mono:
   [nerd-fonts/releases](https://github.com/ryanoasis/nerd-fonts/releases) →
   *JetBrainsMono Nerd Font*. Unzip into `~/Library/Fonts`.

2. Copy the themes:

   ```sh
   git clone https://github.com/suhitp/xcode-theme.git
   cd xcode-theme
   cp Dark/*.xccolortheme Light/*.xccolortheme \
      ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
   ```

   Create that folder first if it doesn't exist.

3. Restart Xcode, then **Settings ▸ Themes** and pick one.

## Contributing

New themes are welcome. Two things keep the set coherent:

- Name yours `<Mode> <Accent> <Backdrop>` using the vocabulary above.
- Add it to the matching table in this README.

Open an issue before a large batch so we agree on direction first.

## License

Not yet specified — add one before sharing this widely.
