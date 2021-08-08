# Setting up a Google OS X Machine

1. Clone my dot files:

	git clone https://github.com/morgante/dotfiles

1. Install Xcode.

1. Run [strap](https://github.com/MikeMcQuaid/strap).

	bash strap/bin/strap.sh

1. Install [Source Code Pro for Powerline](https://github.com/powerline/fonts/blob/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf)

1. Set up symlinks from `script/setup` (manually).

1. Update OS X settings in System Preferences

- Desktop: Default wallpaper to something nice
- Mission Control > Spaces: uncheck automatically rearrange Spaces based on most recent use
- Mission Control > Hot Corners: disable all
- [Allow Hammerspoon control](https://github.com/Hammerspoon/hammerspoon/issues/237#issuecomment-476320469): `System Preferences > Security & Privacy > Privacy tab > Accessibility`
