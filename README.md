<p align="center">
  <h1>Xcode Themes</h1>
  <p>Six themes for Xcode — four dark, two light. One font, one naming scheme.</p>
</p>

<p align="center">
  <img src="preview/Xcode Dark Knight Midnight.png" width="49%" alt="Xcode Dark Knight Midnight">
  <img src="preview/Xcode Dark Ruby Dusk Ember.png" width="49%" alt="Xcode Dark Ruby Dusk Ember">
  <br><br>
  <img src="preview/Xcode Light Lagoon Zenith.png" width="49%" alt="Xcode Light Lagoon Zenith">
  <img src="preview/Xcode Light Prism Zenith.png" width="49%" alt="Xcode Light Prism Zenith">
</p>

## Themes

### Dark

| Theme | Backdrop | Character |
| --- | --- | --- |
| **Ember Dusk** | `#0E0E0E` | orange strings, teal types |
| **Knight Dusk Moss** | `#101010` | green-first identifiers, magenta regex |
| **Knight Midnight** | `#070917` | deep navy, jade identifiers |
| **Ruby Dusk Ember** | `#101010` | red strings, pink keywords |

### Light

| Theme | Backdrop | Character |
| --- | --- | --- |
| **Lagoon Zenith** | `#FFFFFF` | teal identifiers |
| **Prism Zenith** | `#FFFFFF` | full spectrum, brown comments |

### Naming

Every theme is `<Mode> <Accent> <Backdrop>` — no numbers, no suffixes to decode.

- **Accent** — what glows in it: *Ember, Moss, Ruby, Lagoon, Prism*
- **Backdrop** — the sky behind it: *Dusk* `#101010`, *Midnight* navy black, *Zenith* `#FFFFFF`

The dark set spans two families: **Knight** (One Dark's deep-navy variant, amber
macros, magenta regex) and **Ember** (slate comments, warm orange strings).

## Install

1. Install the font — every theme uses **JetBrainsMono Nerd Font**, and without it
   Xcode quietly falls back to a system mono:
   [nerd-fonts/releases](https://github.com/ryanoasis/nerd-fonts/releases) →
   *JetBrainsMono Nerd Font*. Unzip into `~/Library/Fonts`.

2. Install the themes:

   ```sh
   git clone https://github.com/suhitp/xcode-theme.git
   cd xcode-theme
   ./scripts/install.sh
   ```

   Pass `--clean` to also drop older themes from this repo that have since been
   renamed or removed, so your picker stays tidy.

3. Restart Xcode, then **Settings ▸ Themes** and pick one.

## License

MIT — see [LICENSE](LICENSE).
