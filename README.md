# Sims 4 WickedWhims AutoHotkey Script

AutoHotkey v2 script for automating WickedWhims commands in The Sims 4.

## 🎮 Features

- **F / F10**: Execute `ww.progress_sex` command (next animation)
- **^ (Caret key)**: Pause time in-game (Speed 0)
- Only active when The Sims 4 is running
- 350ms debounce protection
- Error handling and clipboard safety

## 📥 Installation

1. Install [AutoHotkey v2](https://www.autohotkey.com/v2/)
2. Download `wickedwhimsprogres.ahk`
3. Double-click to run or add to Windows startup

## ⚙️ Requirements

- AutoHotkey v2.0 or higher
- The Sims 4
- WickedWhims mod installed

## 🎯 Usage

1. Start The Sims 4
2. Run the AutoHotkey script
3. Press **F** or **F10** during WickedWhims animations to progress
4. Press **^** (Caret, left of "1" key) to pause time

## 🔧 How It Works

The script automatically:
- Detects when Sims 4 is active (TS4_x64.exe)
- Opens the game console (Ctrl+Shift+C)
- Injects the WickedWhims command
- Closes the console
- Restores your clipboard

## 🛡️ Error Handling

- Try-Catch for window detection
- Clipboard validation
- Automatic clipboard restoration
- Visual feedback via tooltips

## 📝 License

MIT License - Feel free to modify and share!

## 👨‍💻 Author

BlackMautz - [Website](https://mrblackmautz.de)

## ⚠️ Disclaimer

This is a third-party automation tool. Use at your own discretion. Not affiliated with EA Games or TURBODRIVER.
