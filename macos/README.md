# macOS

The script records preference overrides rather than restating system defaults.

Apply the preferences from the repository root:

```sh
sh macos/defaults.sh
```

Dock, Finder, and SystemUIServer restart to apply the settings.
Log out and back in if trackpad or mouse settings do not take effect immediately.

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
| New window location | Home directory |
| Folders first | Enabled |
| Folders first on desktop | Enabled |

## Trackpad and mouse

| Setting | Value |
| --- | --- |
| Tap to click | Enabled |
| Three-finger drag | Enabled |
| Click pressure | Light |
| Trackpad tracking speed | 1.5 |
| Mouse tracking speed | 0.5 |

Trackpad preferences apply to both built-in and Bluetooth trackpads.
Tracking speeds use macOS internal values.

## Menu bar clock

The system clock uses a small analog face to avoid duplicating Itsycal's time display.
