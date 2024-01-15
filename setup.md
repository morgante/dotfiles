# Setting up a Google OS X Machine

1. Clone my dot files:

	git clone https://github.com/morgante/dotfiles

1. Install Xcode.

1. Run [strap](https://github.com/MikeMcQuaid/strap).

	bash strap/bin/strap.sh

1. Set up symlinks from `script/setup` (manually).

1. Update OS X settings in System Preferences

- Desktop: Default wallpaper to something nice
- Mission Control > Spaces: uncheck automatically rearrange Spaces based on most recent use
- Mission Control > Hot Corners: disable all
- [Allow Hammerspoon control](https://github.com/Hammerspoon/hammerspoon/issues/237#issuecomment-476320469): `System Preferences > Security & Privacy > Privacy tab > Accessibility`
- Trackpad -> Tap to click
- Trackpad -> Fast-2 track speed

1. Launch VS Code once to sync extensions.

1. Install [Cursor](https://cursor.sh/) and allow it to import extensions from VS code.

1. Download SSH keys (ssh.zip) from 1Password and move them to ~/.ssh/

		mv ~/Downloads/ssh_keys/* ~/.ssh/

## Troubleshooting
1. Install hammerspoon spaces from [here](https://github.com/asmagill/hammerspoon_asm/tree/master/spaces) for M1.
