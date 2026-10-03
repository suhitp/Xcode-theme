<p align="center">
  <h1>Xcode Themes</h1>
  <p>Six themes for Xcode — four dark, two light. One font, one naming scheme.</p>
</p>

## Themes

### Dark

| Theme | Backdrop | Description |
| --- | --- | --- |
| **Ember Dusk** | `#0E0E0E` | Slate comments with warm orange strings and numbers, teal types. A conventional warm palette that stays out of the way on a long session. |
| **Knight Dusk Moss** | `#101010` | Jade classes and types, yellow declarations, amber macros, and every regex token in magenta. High separation between token kinds. |
| **Knight Midnight** | `#070917` | A blue cast runs through the editor and the console too, with bright jade identifiers against it. The signature theme of the set. |
| **Ruby Dusk Ember** | `#101010` | The most colourful theme here: red strings, pink keywords, mint and violet identifiers on neutral black. Built for contrast. |

### Light

| Theme | Backdrop | Description |
| --- | --- | --- |
| **Lagoon Zenith** | `#FFFFFF` | Neutral grey comments instead of the coloured ones most light themes reach for, with teal-forward identifiers. Quiet enough to disappear behind the code. |
| **Prism Zenith** | `#FFFFFF` | Warm brown comments, pink keywords, blue and violet declarations. Richer than Lagoon, for when you want colour in a light theme. |

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
