# WiFi Pineapple Pager Theme Structure Mapping

***Dislaimer: 100% AI Slop...but valuable info***

**Quick Reference Guide for Modifying UI Elements**

This document provides a comprehensive mapping of the WiFi Pineapple Pager theme structure, based on analysis of the `wargames` theme. Use this as a quick reference when customizing themes.

## 📱 Display Specifications

- **Screen Resolution**: **480 x 222 pixels**
- **Aspect Ratio**: ~2.16:1 (landscape)
- **Color Depth**: 16-bit (as indicated by `pager-16bit.png`)

All dimensions listed in this document are in **pixels (width x height)**.

---

## 📁 Directory Structure

```
theme-name/
├── theme.json              # Main theme configuration
├── components/             # UI component definitions (JSON files)
│   ├── dashboards/         # Main menu screens
│   ├── status_bars/        # Status bar configurations
│   ├── dialogs/            # Dialog boxes and popups
│   ├── templates/          # Reusable UI element templates
│   ├── settings/           # Settings menu screens
│   ├── recon/              # Recon menu screens
│   ├── pineap/             # PineAP menu screens
│   ├── alerts/             # Alert/notification screens
│   └── keyboards/          # On-screen keyboard layouts
└── assets/                 # Images, icons, backgrounds
    ├── dashboard/          # Dashboard backgrounds and icons
    ├── statusbar/          # Status bar icons
    ├── toggle/             # Toggle switch graphics
    ├── radio/              # Radio button graphics
    ├── optiondialog/       # Option dialog backgrounds
    ├── keyboard/           # Keyboard layout images
    └── [other folders]     # Various UI element graphics
```

---

## 🎨 Asset Files: Backgrounds vs Icons

### **Background Images** (Full-screen or large areas)

| File | Dimensions | Purpose | Location Used |
|------|------------|---------|---------------|
| `dashboard/wargames_bg.png` | **480 x 222** | Main dashboard background | `dashboards/wargames_dashboard.json` |
| `dashboard/item_bg.png` | **63 x 62** | Menu item background | Dashboard menu items |
| `dashboard/highlight.png` | **71 x 72** | Selected item highlight overlay | Selected menu items |
| `pineap_bg.png` | 480 x 222 (typical) | PineAP screen background | PineAP menus |
| `settings_bg.png` | 480 x 222 (typical) | Settings screen background | Settings menus |
| `blank_recon_bg.png` | **480 x 222** | Recon screen background | Recon screens |
| `dialog_bg.png` | **480 x 222** | Generic dialog background | Various dialogs |
| `confirmation_dialog_bg_term.png` | **429 x 222** | Confirmation dialog background | Confirmation dialogs |
| `edit_string_dialog_bg.png` | **467 x 186** | Text input dialog background | Text input dialogs |
| `optiondialog/option_dialog_bg_windowed.png` | **463 x 197** | Option picker background | Option dialogs |
| `optiondialog/option_dialog_bg_narrow.png` | **463 x 197** | Narrow option dialog | Narrow option dialogs |
| `optiondialog/option_dialog_bg_windowed_*.png` | **463 x 197** | Colored option dialogs | Color-coded option dialogs |
| `payload_log_bg.png` | **480 x 222** | Payload log background | Payload log screen |
| `power_menu_bg.png` | 480 x 222 (typical) | Power menu background | Power/shutdown menu |
| `lock_screen.png` | **480 x 222** | Lock screen background | Lock screen |
| `alerts_dashboard/alerts_bg.png` | 480 x 222 (typical) | Alerts dashboard background | Alerts screen |
| `recon/recon_dashboard.png` | **480 x 222** | Recon dashboard background | Recon dashboard |
| `recon/recon_list_bg.png` | **480 x 222** | Recon list background | Recon list screens |
| `alert_dialog_bg_term.png` | **398 x 220** | Alert dialog background | Alert dialogs |
| `alert_dialog_bg_term_blue.png` | **429 x 222** | Blue alert dialog | Alert dialogs |
| `alert_dialog_bg_term_error.png` | **429 x 222** | Error alert dialog | Error dialogs |
| `alert_dialog_bg_term_warning.png` | **429 x 222** | Warning alert dialog | Warning dialogs |
| `messagebox.png` | **459 x 112** | Message box background | Message boxes |
| `help_qr.png` | **480 x 222** | Help QR code screen | Help screens |
| `license_qr.png` | **480 x 222** | License QR code screen | License screens |
| `virt_qr.png` | **480 x 222** | Virtual Pager QR screen | Virtual Pager screens |
| `critical_battery_alert.png` | **480 x 222** | Critical battery alert | Battery alerts |
| `low_battery_alert.png` | **480 x 222** | Low battery alert | Battery alerts |
| `buttons_locked.png` | **480 x 222** | Locked buttons screen | Locked state |

### **Icons** (Small graphics, typically 16-64px)

| File/Folder | Dimensions | Purpose | Size/Type |
|-------------|------------|---------|-----------|
| `dashboard/alerts.png` | **33 x 29** | Alerts menu icon | Icon |
| `dashboard/payloads.png` | **25 x 33** | Payloads menu icon | Icon |
| `dashboard/recon.png` | **33 x 25** | Recon menu icon | Icon |
| `dashboard/pineap.png` | **33 x 33** | PineAP menu icon | Icon |
| `dashboard/settings.png` | **33 x 33** | Settings menu icon | Icon |
| `statusbar/*.png` | **17-38 x 19-22** | Status bar icons (battery, volume, brightness, etc.) | Status bar icons |
| `wifi_icon.png` | ~20-30 x 20-30 (typical) | WiFi indicator icon | Icon |
| `client.png` | **23 x 14** | Client indicator | Icon |
| `info.png` | **29 x 20** | Information icon | Icon |
| `warning.png` | **29 x 20** | Warning icon | Icon |
| `flame.png` | **11 x 17** | Fire/hot indicator | Icon |
| `folder.png` | **24 x 24** | Folder/directory icon | Icon |
| `menu.png` | **29 x 20** | Menu indicator | Icon |
| `menu_disabled.png` | **29 x 20** | Disabled menu indicator | Icon |
| `x.png` | **15 x 15** (optiondialog) | Close/cancel icon | Icon |
| `up.png` / `down.png` | **16 x 16** | Navigation arrows | Icons |
| `arrow_up.png` / `arrow_down.png` | **19 x 38** | Alternative arrows | Icons |
| `triangle.png` | ~20 x 20 (typical) | Triangle indicator | Icon |
| `swap.png` | ~20 x 20 (typical) | Swap/switch icon | Icon |
| `start.png` | ~20 x 20 (typical) | Start/play icon | Icon |
| `autoplay.png` / `autoplay_stopped.png` | **24 x 24** | Autoplay indicators | Icons |
| `checkbox.png` | **20 x 20** | Checkbox graphic | Icon |
| `divider.png` / `divleft.png` / `divright.png` | **13 x 160** | Divider graphics | Icons |
| `pager-16bit.png` | **88 x 62** | Pager logo/icon | Logo |

### **Status Bar Icons** (`assets/statusbar/`)

| File | Dimensions | Purpose | States |
|------|------------|---------|--------|
| `dashboard_battery_text.png` | **38 x 20** | Battery text indicator | `text` |
| `dashboard_battery_charge_25.png` | **38 x 20** | Battery charging 25% | `charging_25` |
| `dashboard_battery_charge_50.png` | **38 x 20** | Battery charging 50% | `charging_50` |
| `dashboard_battery_charge_75.png` | **38 x 20** | Battery charging 75% | `charging_75` |
| `dashboard_battery_charge_100.png` | **38 x 20** | Battery charging 100% | `charging_100` |
| `dashboard_battery_full.png` | **38 x 20** | Battery full | `charged` |
| `dashboard_brightness_2.png` | **20 x 20** | Brightness 15% | `15` |
| `dashboard_brightness_3.png` | **20 x 20** | Brightness 25% | `25` |
| `dashboard_brightness_5.png` | **20 x 20** | Brightness 50% | `50` |
| `dashboard_brightness_7.png` | **20 x 20** | Brightness 75% | `75` |
| `dashboard_brightness_8.png` | **20 x 20** | Brightness 100% | `100` |
| `volume_low.png` | **17 x 20** | Volume low | `low` |
| `volume_medium.png` | **17 x 20** | Volume medium | `medium` |
| `volume_high.png` | **17 x 20** | Volume high | `high` |
| `mute.png` | **20 x 20** | Muted volume icon | `mute` |
| `vibrate.png` | **20 x 20** | Vibration indicator | `on` / `off` (with recolor) |
| `bluetooth.png` | **20 x 20** | Bluetooth indicator | Icon |
| `gps.png` | **21 x 21** | GPS indicator | Icon |
| `database.png` | **21 x 19** | Database indicator | Icon |
| `pcap.png` | ~20 x 20 (typical) | PCAP indicator | Icon |
| `wigle.png` | ~20 x 20 (typical) | WIGLE indicator | Icon |
| `ghz_2.png` | **20 x 20** | 2.4 GHz band | `2` |
| `ghz_5.png` | **20 x 20** | 5 GHz band | `5` |
| `ghz_6.png` | **20 x 20** | 6 GHz band | `6` |
| `ghz_off.png` | **20 x 20** | WiFi off | `off` |
| `ghz_25.png` | **20 x 20** | 2.5 GHz band | `25` |
| `ghz_26.png` | **20 x 22** | 2.6 GHz band | `26` |
| `ghz_56.png` | **20 x 20** | 5.6 GHz band | `56` |
| `ghz_256.png` | **20 x 20** | Multi-band indicator | `256` |

### **Interactive Element Graphics**

| Folder | Purpose | Contents & Dimensions |
|--------|---------|----------------------|
| `toggle/enabled/` | Toggle switch (ON state) | `toggle_bg.png` (**29 x 16**), `circle.png` (**12 x 12**), `check.png` (**10 x 5**) |
| `toggle/disabled/` | Toggle switch (OFF state) | `toggle_disabled_bg.png` (**29 x 16**), `circle.png` (**12 x 12**) |
| `radio/` | Radio button graphics | `radio_border.png` (**19 x 19**), `radio_selected.png` (**11 x 11**) |
| `optiondialog/` | Option dialog elements | `button_bg.png` (**59 x 71**), `button_outline.png` (**59 x 71**), `check.png` (**24 x 19**), `x.png` (**15 x 15**) |
| `confirmation_dialog/` | Confirmation buttons | `generic_confirmation_button_deselected.png` (**121 x 41**), `generic_confirmation_button_selected.png` (**121 x 41**) |
| `keyboard/` | Keyboard layout images | `keyboard_layout_*.png` (**480 x 222**), `_key-bg.png` (**47 x 31**), `_hex-bg.png` (**75 x 54**), `_spacebar-4x.png` (**188 x 31**) |
| `spinner/` | Loading spinner frames | `spinner1.png` through `spinner4.png` (~20-30 x 20-30 typical) |
| `boot_animation/` | Boot animation frames | `init-1.png` through `init-4.png` (480 x 222 typical) |
| `recon/` | Recon-specific icons | `clients.png` (**20 x 20**), `enc_open.png` (**20 x 20**), `enc_wep.png` (**20 x 20**), `enc_wpa2.png` (**20 x 20**), `enc_wpa3.png` (**20 x 20**), `rssi_0.png` (**20 x 20**), `rssi_1.png` (**20 x 20**), `rssi_2.png` (**20 x 20**), `rssi_3.png` (**20 x 20**) |
| `payloadlog/` | Payload log indicators | `payload_complete_indicator.png` (**480 x 43**), `payload_error_indicator.png` (**480 x 44**), `payload_running_indicator.png` (**480 x 43**), `payload_stopped_indicator.png` (**480 x 44**), `payload_log_bg.png` (**480 x 222**), `scroll_down_indicator.png` (**12 x 15**), `scroll_pause_indicator.png` (**16 x 16**), `scroll_up_indicator.png` (**12 x 15**) |
| `payloads_dashboard/` | Payload dashboard elements | `payloads_bg.png` (480 x 222 typical), `recon_payloads_bg.png` (480 x 222 typical), `arrow.png` (~20 x 20 typical) |
| `launch_payload_dialog/` | Payload launch dialog | `launch_payload_bg.png` (480 x 222 typical), `animation/anim_frame_*.png` (varies) |
| `upgrade/` | Upgrade/update indicators | `checking_for_update-min.png`, `downloading_upgrade.png`, `validating_upgrade.png` (varies) |
| `alerts_dashboard/` | Alerts dashboard | `alerts_bg.png` (480 x 222 typical), `sub.png` (varies) |

---

## 📝 Component JSON Structure

### **Main Theme Configuration** (`theme.json`)

The `theme.json` file maps component types to their JSON definition files:

```json
{
  "status_bars": {
    "default": "components/status_bars/status_bar.json",
    "network": "components/status_bars/status_bar_network.json",
    ...
  },
  "generic_menus": {
    "dashboard_path": "components/dashboards/wargames_dashboard.json",
    "settings_menu": "components/dashboards/dashboard_settings.json",
    ...
  },
  "color_palette": {
    "black": { "r": 0, "g": 0, "b": 0 },
    "blue": { "r": 106, "g": 210, "b": 249 },
    ...
  }
}
```

**Key Sections:**
- `status_bars`: Status bar configurations for different screens
- `generic_menus`: Menu screen definitions
- `option_dialogs`: Option picker dialogs
- `string_templates`: Text element templates
- `toggle_templates`: Toggle switch templates
- `radio_templates`: Radio button templates
- `color_palette`: Color definitions (RGB values)

---

### **Dashboard Component** (`components/dashboards/*.json`)

**Structure:**
```json
{
  "screen_name": "main_dashboard",
  "status_bar": "default",
  "windowed_canvas": false,
  "background": {
    "layers": [
      { "image_path": "assets/dashboard/wargames_bg.png", "x": 0, "y": 0 }
    ],
    "background_color": { "r": 0, "g": 0, "b": 0 }
  },
  "menu_items": [
    {
      "id": "ALERTS",
      "layers": [...],           # Unselected state layers
      "selected_layers": [...],   # Selected state layers
      "x": 263,                   # X position
      "y": 79,                    # Y position
      "target": "alerts_dashboard"
    }
  ]
}
```

**How to Modify:**
- **Background**: Change `background.layers[].image_path` or `background_color`
- **Menu Item Position**: Modify `x` and `y` values
- **Menu Item Appearance**: Edit `layers` (unselected) and `selected_layers` (selected)
- **Menu Item Text**: Add/modify text in `selected_layers` with `"text"` property

---

### **Status Bar Component** (`components/status_bars/*.json`)

**Structure:**
```json
{
  "background": {
    "background_color": { "r": 0, "g": 0, "b": 0 }
  },
  "status_bar_items": {
    "Time": {
      "x": 400,
      "y": 7,
      "recolor_palette": "blue"
    },
    "Battery": {
      "x": 346,
      "y": 7,
      "layers": {
        "discharging": [{ "image_path": "...", "x": 4, "y": -2 }],
        "charging_25": [{ "image_path": "...", "x": 4, "y": -2 }],
        ...
      }
    }
  }
}
```

**How to Modify:**
- **Item Position**: Change `x` and `y` values
- **Item Color**: Modify `recolor_palette` (uses colors from `color_palette`)
- **Item Icons**: Change `image_path` in `layers` for each state
- **Background Color**: Modify `background.background_color`

---

### **Text Template** (`components/templates/string.json`)

**Structure:**
```json
{
  "text_size": "medium",
  "text_color_palette": "blue",
  "max_chars": 28,
  "wrap_text": false
}
```

**Text Size Options:**
- `"small"` - Small text
- `"medium"` - Medium text (default)
- `"large"` - Large text

**How to Modify:**
- **Font Size**: Change `text_size` to `"small"`, `"medium"`, or `"large"`
- **Text Color**: Change `text_color_palette` to any color from `color_palette` (e.g., `"red"`, `"green"`, `"blue"`, `"yellow"`)
- **Character Limit**: Modify `max_chars` (number)
- **Text Wrapping**: Set `wrap_text` to `true` or `false`

**Using Text in Components:**
```json
{
  "text": "ALERTS",
  "x": -211,
  "y": 92,
  "text_size": "large",
  "text_color_palette": "green"
}
```

---

### **Dialog Component** (`components/dialogs/*.json`)

**Structure:**
```json
{
  "screen_name": "confirmation_dialog",
  "windowed_canvas": true,
  "background": {
    "layers": [
      { "image_path": "assets/confirmation_dialog_bg_term.png", "x": 28, "y": 0 },
      { "variable_name": "$_INPUT", "x": 60, "y": 60, "use_template": "confirmation_dialog_text" }
    ]
  },
  "pages": [
    {
      "menu_items": [
        {
          "id": "Save",
          "x": 114,
          "y": 157,
          "layers": [...],
          "selected_layers": [...],
          "target": "back"
        }
      ]
    }
  ]
}
```

**How to Modify:**
- **Dialog Background**: Change `background.layers[].image_path` and position (`x`, `y`)
- **Dialog Text**: Modify template reference in `use_template` or add direct text layer
- **Button Position**: Change `x` and `y` in `menu_items`
- **Button Graphics**: Edit `layers` and `selected_layers`

---

### **Toggle Template** (`components/templates/toggle.json`)

**Structure:**
```json
{
  "enabled": [
    { "image_path": "assets/toggle/enabled/toggle_bg.png", "x": 0, "y": 4 },
    { "image_path": "assets/toggle/enabled/circle.png", "x": 14, "y": 6 },
    { "image_path": "assets/toggle/enabled/check.png", "x": 16, "y": 9 }
  ],
  "disabled": [
    { "image_path": "assets/toggle/disabled/toggle_disabled_bg.png", "x": 0, "y": 4 },
    { "image_path": "assets/toggle/disabled/circle.png", "x": 2, "y": 6 }
  ]
}
```

**How to Modify:**
- **Toggle Graphics**: Replace image files in `assets/toggle/enabled/` and `assets/toggle/disabled/`
- **Toggle Position**: Adjust `x` and `y` values for each layer
- **Toggle Size**: Replace PNG files with different sized graphics

---

## 🎨 Color Palette System

Colors are defined in `theme.json` under `color_palette`:

```json
"color_palette": {
  "black": { "r": 0, "g": 0, "b": 0 },
  "blue": { "r": 106, "g": 210, "b": 249 },
  "red": { "r": 250, "g": 72, "b": 9 },
  "green": { "r": 42, "g": 180, "b": 42 },
  "yellow": { "r": 231, "g": 197, "b": 74 },
  ...
}
```

**How to Use Colors:**
- **Text Color**: Set `"text_color_palette": "blue"` in text templates
- **Image Recoloring**: Set `"recolor_palette": "red"` in image layers
- **Background Color**: Use RGB values directly: `{ "r": 0, "g": 0, "b": 0 }`

**How to Modify Colors:**
1. Edit RGB values in `theme.json` → `color_palette`
2. Reference by name in components: `"text_color_palette": "your_color_name"`
3. Add new colors by adding entries to `color_palette`

---

## 📍 Positioning System

All positions use pixel coordinates with origin (0,0) at top-left:

**Common Position Properties:**
- `"x"`: Horizontal position (left to right)
- `"y"`: Vertical position (top to bottom)

**Examples:**
```json
// Menu item at position (263, 79)
{ "x": 263, "y": 79 }

// Text label at position (-211, 92) - negative X = left-aligned from right edge
{ "text": "ALERTS", "x": -211, "y": 92 }

// Image layer with offset
{ "image_path": "assets/dashboard/item_bg.png", "x": 4, "y": 5 }
```

**How to Modify Positions:**
- **Move Element**: Adjust `x` and `y` values
- **Layer Stacking**: Order in `layers` array (first = bottom, last = top)
- **Relative Positioning**: Use offsets within layers (e.g., icon at x+19, y+18 from item position)

---

## 🔤 Font Customization Quick Reference

### **Text Properties in Components:**

```json
{
  "text": "Your Text Here",
  "x": 100,
  "y": 50,
  "text_size": "large",           // "small" | "medium" | "large"
  "text_color_palette": "green"   // Any color from color_palette
}
```

### **Text Template Properties:**

```json
{
  "text_size": "medium",
  "text_color_palette": "blue",
  "max_chars": 28,
  "wrap_text": false
}
```

### **Where to Change Fonts:**

1. **Individual Text Elements**: Add `text`, `text_size`, `text_color_palette` to layer
2. **Template-Based Text**: Modify template JSON file (e.g., `templates/string.json`)
3. **All Text in Component**: Update template reference or modify template directly

---

## 🖼️ Image Layer Properties

**Standard Image Layer:**
```json
{
  "image_path": "assets/dashboard/item_bg.png",
  "x": 4,
  "y": 5,
  "recolor_palette": "red"  // Optional: recolor image
}
```

**How to Modify:**
- **Change Image**: Replace `image_path` with new file path
- **Reposition**: Adjust `x` and `y` values
- **Recolor**: Add/change `recolor_palette` (uses colors from `color_palette`)

---

## 📐 Standard Screen Dimensions

The WiFi Pineapple Pager uses a **480 x 222 pixel** display. Most full-screen backgrounds and dialogs use this resolution:

- **Full Screen Backgrounds**: **480 x 222** pixels
- **Option Dialogs**: **463 x 197** pixels (windowed)
- **Confirmation Dialogs**: **429 x 222** pixels
- **Edit String Dialogs**: **467 x 186** pixels
- **Alert Dialogs**: **398-429 x 220-222** pixels (varies by type)
- **Message Boxes**: **459 x 112** pixels
- **Keyboard Layouts**: **480 x 222** pixels

### **Common Icon Sizes**

- **Status Bar Icons**: **17-38 x 19-22** pixels
- **Menu Item Icons**: **25-33 x 25-33** pixels
- **Small Icons** (info, warning, etc.): **20-29 x 20** pixels
- **Toggle Switches**: **29 x 16** pixels (background)
- **Radio Buttons**: **19 x 19** pixels (border), **11 x 11** pixels (selected)
- **Checkboxes**: **20 x 20** pixels
- **Buttons**: **59 x 71** pixels (option dialog), **121 x 41** pixels (confirmation)

### **Asset Dimension Reference**

When creating new assets, maintain these dimensions for consistency:

| Asset Type | Recommended Dimensions | Notes |
|------------|----------------------|-------|
| Full-screen background | **480 x 222** | Standard screen size |
| Menu item icon | **25-35 x 25-35** | Dashboard menu icons |
| Status bar icon | **20 x 20** | Most status indicators |
| Battery indicator | **38 x 20** | Status bar battery |
| Toggle switch | **29 x 16** | Background only (add circle/check separately) |
| Radio button | **19 x 19** | Border circle |
| Dialog background | **463-480 x 186-222** | Varies by dialog type |
| Button | **59-121 x 41-71** | Varies by button type |
| Small indicator | **12-20 x 12-20** | Scroll indicators, small icons |

---

## 📋 Common UI Element Modifications

### **Change Menu Item Icon:**
```json
// In dashboard menu_items
{
  "layers": [
    { "image_path": "assets/dashboard/alerts.png", "x": 19, "y": 18 }
  ]
}
```
→ Replace `alerts.png` with your icon file

### **Change Menu Item Text:**
```json
// In selected_layers
{
  "text": "ALERTS",
  "x": -211,
  "y": 92,
  "text_size": "large",
  "text_color_palette": "green"
}
```
→ Modify `text`, `text_size`, `text_color_palette`, or position (`x`, `y`)

### **Change Background:**
```json
// In background.layers
{
  "image_path": "assets/dashboard/wargames_bg.png",
  "x": 0,
  "y": 0
}
```
→ Replace `wargames_bg.png` with your background image

### **Change Status Bar Item:**
```json
// In status_bar_items
{
  "Time": {
    "x": 400,
    "y": 7,
    "recolor_palette": "blue"
  }
}
```
→ Adjust position (`x`, `y`) or color (`recolor_palette`)

### **Change Toggle Switch:**
1. Replace images in `assets/toggle/enabled/` and `assets/toggle/disabled/`
2. Adjust positions in `components/templates/toggle.json` if needed

### **Change Button Appearance:**
```json
// In menu_items (for buttons)
{
  "layers": [
    { "image_path": "assets/confirmation_dialog/generic_confirmation_button_deselected.png", "x": 114, "y": 157 }
  ],
  "selected_layers": [
    { "image_path": "assets/confirmation_dialog/generic_confirmation_button_selected.png", "x": 114, "y": 157 }
  ]
}
```
→ Replace button images or adjust positions

---

## 🔍 Quick Lookup: What File Controls What?

| UI Element | Dimensions | File Location | Key Properties to Modify |
|------------|------------|---------------|--------------------------|
| **Main Dashboard Background** | **480 x 222** | `components/dashboards/wargames_dashboard.json` | `background.layers[].image_path` |
| **Menu Item Icons** | **25-35 x 25-35** | `components/dashboards/*.json` | `menu_items[].layers[].image_path` |
| **Menu Item Background** | **63 x 62** | `components/dashboards/*.json` | `menu_items[].layers[].image_path` (item_bg.png) |
| **Menu Item Highlight** | **71 x 72** | `components/dashboards/*.json` | `menu_items[].selected_layers[].image_path` (highlight.png) |
| **Menu Item Text** | Variable | `components/dashboards/*.json` | `menu_items[].selected_layers[].text` |
| **Status Bar Icons** | **17-38 x 19-22** | `components/status_bars/*.json` | `status_bar_items[].layers[].image_path` |
| **Status Bar Text Color** | N/A | `components/status_bars/*.json` | `status_bar_items[].recolor_palette` |
| **Dialog Backgrounds** | **398-480 x 186-222** | `components/dialogs/*.json` | `background.layers[].image_path` |
| **Text Size/Color** | N/A | `components/templates/string.json` | `text_size`, `text_color_palette` |
| **Toggle Graphics** | **29 x 16** (bg) | `components/templates/toggle.json` | `enabled[]`, `disabled[]` image paths |
| **Toggle Circle** | **12 x 12** | `components/templates/toggle.json` | Circle position in layers |
| **Toggle Check** | **10 x 5** | `components/templates/toggle.json` | Check mark position |
| **Radio Button** | **19 x 19** | `components/templates/radio.json` | Border and selected graphics |
| **Color Definitions** | N/A | `theme.json` | `color_palette` RGB values |
| **Button Graphics** | **59-121 x 41-71** | `components/dialogs/*.json` | `menu_items[].layers[].image_path` |
| **Option Dialog Background** | **463 x 197** | `components/dialogs/ui_option_dialog.json` | `background.layers[].image_path` |
| **Confirmation Dialog** | **429 x 222** | `components/dialogs/confirmation_dialog.json` | `background.layers[].image_path` |
| **Keyboard Layout** | **480 x 222** | `components/keyboards/*.json` | Keyboard background images |

---

## 💡 Tips for Theme Modification

1. **Start Small**: Modify one element at a time (e.g., change one menu icon)
2. **Test Frequently**: Load theme on device after each change
3. **Backup Original**: Keep original theme files as reference
4. **Image Sizes**: Maintain similar dimensions when replacing images
5. **Color Consistency**: Use `color_palette` for consistent colors across theme
6. **Layer Order**: First layer = bottom, last layer = top (like Photoshop layers)
7. **Negative Coordinates**: Negative X values = right-aligned from right edge
8. **Templates**: Modify templates to change all instances of that element type

---

## 📚 Additional Resources

- **Theme README**: `extras/pager/themes/README.md` - General theme development guide
- **WiFi Pineapple Pager Docs**: `docs/wifi-pineapple-pager.md` - Device documentation
- **Official Hak5 Docs**: https://docs.hak5.org/wifi-pineapple-pager/

---

**Last Updated**: Based on analysis of `wargames` theme structure
**Theme Framework Version**: 0.5

