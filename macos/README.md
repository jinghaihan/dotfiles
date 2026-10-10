# macOS

The script records preference overrides rather than restating system defaults.

Apply the preferences from the repository root:

```sh
sh macos/defaults.sh
```

Dock, Finder, and SystemUIServer restart to apply the settings.
Log out and back in if trackpad settings do not take effect immediately.

## Dock

| Setting | Value |
| --- | --- |
| Position | Left |
| Icon size | 28 |
| Magnification | Enabled |
| Magnified icon size | 60 |
| Recent apps | Hidden |
| Opening animation | Disabled |

## Hot corners

Move the pointer to the bottom-left corner to open Quick Note. No modifier key is required.

## Finder

| Setting | Value |
| --- | --- |
| Path bar | Visible |
| Default view | List |
| Search scope | Current folder |
| New window location | Downloads directory |
| Folders first | Enabled |
| Folders first on desktop | Enabled |

## Trackpad

| Setting | Value |
| --- | --- |
| Tap to click | Enabled |
| Three-finger drag | Enabled |
| Built-in trackpad click pressure | Light |
| Trackpad tracking speed | 1.5 |

Tap to click and three-finger drag apply to both built-in and Bluetooth trackpads.
Mouse tracking speed and Bluetooth trackpad click pressure retain their existing settings.
Trackpad tracking speed uses macOS internal values.

## Menu bar clock

The system clock uses a small analog face to avoid duplicating Itsycal's time display.
