# 🎨 Xcode-theme
Xcode themes for dark and light modes.

## Themes

### Dark
| Theme | Backdrop | Accent |
| --- | --- | --- |
| Xcode Dark Ember Dusk | `#0E0E0E` | orange strings, teal types |
| Xcode Dark Ember Midnight | `#10101A` | orange strings, cyan types |
| Xcode Dark Honey Dusk | `#101010` | amber strings, cyan types |
| Xcode Dark Knight Dusk Cobalt | `#101010` | cyan-first identifiers |
| Xcode Dark Knight Dusk Moss | `#101010` | green-first identifiers |
| Xcode Dark Knight Midnight | `#070917` | deep navy, jade identifiers |
| Xcode Dark Knight Midnight Ember | `#070911` | deep navy, orange keywords |
| Xcode Dark Ruby Dusk Ember | `#101010` | red strings, pink keywords |

### Light
| Theme | Backdrop | Accent |
| --- | --- | --- |
| Xcode Light Cobalt Zenith | `#FFFFFF` | blue identifiers |
| Xcode Light Lagoon Zenith | `#FFFFFF` | teal identifiers |
| Xcode Light Prism Dawn | `#F9F9F9` | muted spectrum, brown comments |
| Xcode Light Prism Zenith | `#FFFFFF` | full spectrum, brown comments |

Names follow `<Mode> <Accent> <Backdrop>`:

- **Accent** — what glows in it: *Ember, Honey, Ruby, Moss, Cobalt, Lagoon, Prism*
- **Backdrop** — the sky behind it: *Dusk* (`#101010`), *Midnight* (navy black), *Zenith* (`#FFFFFF`), *Dawn* (`#F9F9F9`)

## Installation

1. Clone the repo:
$ git clone https://github.com/suhitp/xcode-theme.git

2. Create a folder at below path if it doesn't exist already:
~/Library/Developer/Xcode/UserData/FontAndColorThemes

3. Copy the files with .xccolortheme extension into the FontAndColorThemes folder.

4. Install the fonts. Without them Xcode silently falls back to a system mono and the themes won't look right.

   **Every theme uses JetBrainsMono Nerd Font** — download *JetBrainsMono Nerd Font* from [nerd-fonts/releases](https://github.com/ryanoasis/nerd-fonts/releases).

5. Unzip each archive and move the font files into ~/Library/Fonts.

## Activating theme

1. Restart the Xcode  

2. go to Xcode > Preferences > Fonts & Colors

3. Select the new theme.


## Contributing

Pull requests are welcome with new themes. For any changes, please open an issue first to discuss what you would like to change.
