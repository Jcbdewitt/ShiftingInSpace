guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

menuX = guiWidth + 200;
menuY = guiHeight - guiMargin;
menuXTarget = guiWidth - guiMargin;
menuSpeed = 25; 
menuFont = fMenu;
menuItemHeight = font_get_size(fMenu);
menuCommitted = -1;
menuControl = true;

menuSelect[1] = "Start";
menuSelect[0] = "Quit Game";

menuItems = array_length_1d(menuSelect);
menuCursor = 1;