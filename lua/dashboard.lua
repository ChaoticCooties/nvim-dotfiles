local g = vim.g

-- g.dashboard_disable_at_vimenter = 1 -- dashboard is disabled by default
g.dashboard_disable_statusline = 1
g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = {
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢛⡋⣍⣭⣬⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢏⣵⡾⣫⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢁⣿⣿⢰⣿⣿⣿⣿⠿⠿⠿⠿⠿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡻⣧⠛⣋⣭⡶⠶⠂⠷⠿⣿⣿⣿⣿⣶⣶⣤⣭⣛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣴⣶⡎⡋⠤⠾⢿⣿⣿⣿⣿⣿⣟⢿⣿⣿⣿⣿⣿⣷⣦⣙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣥⣶⣿⣵⣶⣾⣿⣿⣿⣿⣿⣟⠻⣿⣿⣿⣷⣝⢿⣿⣿⣿⣍⢿⣿⣷⣌⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⡾⣡⣿⢫⣿⣿⣿⣿⣿⣿⡸⣿⣿⣷⣌⢻⣿⣿⣿⣷⡙⣿⣿⣿⣷⡙⣿⣿⣦⡙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⡾⣱⣿⡿⢸⣿⣿⣿⣿⢿⣿⣷⡘⢿⣿⣿⣷⡙⣿⣿⣿⣿⣎⢿⣿⣿⣿⣌⢿⡜⣷⡘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⣾⢧⣿⣿⡇⣿⢸⣿⣿⣿⡆⣻⣿⣷⢠⡹⣿⣿⣿⣎⢿⣿⣿⣿⣦⢻⣿⣿⣿⣎⢻⡘⣷⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢸⣿⣼⣿⣿⠀⣿⢸⣿⣿⣿⣿⠀⢿⠿⡃⣓⡘⢛⣛⡛⠊⣿⣿⣿⣿⣧⢻⣿⣿⣿⣦⡱⣹⣇⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢇⣿⣿⣿⣿⣿⢀⢻⡀⣿⣿⣿⣿⡜⡌⢿⣿⣹⣿⣎⢻⣿⣎⢸⣿⣿⡝⣿⡎⣿⣿⣿⡛⣷⡜⢿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⢼⣿⣿⣿⡿⢘⡘⣣⡸⣿⣿⣿⡇⢿⡜⣟⠭⠒⠛⢃⠙⡛⠦⣿⣿⡇⣿⣿⡸⣿⣿⣿⣎⠻⣎⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠂⣾⣿⢻⣯⡆⢽⡧⠳⠱⣿⣿⣿⡏⠸⣿⡘⣠⣵⢋⢩⡽⢀⣦⡊⣙⡇⣿⡇⢧⢹⣿⣿⣿⣧⠙⢧⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⡧⢡⢸⣿⢸⣿⣇⠽⢋⣉⠡⡙⢿⣿⣿⢠⢻⣷⢹⣿⡀⣎⡵⢐⣿⢰⣿⡇⣿⡏⢬⠐⢿⣿⣿⣿⡇⢇⠃⠽⣿⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢹⢈⢹⠉⣿⣿⠐⣾⡅⣎⢋⢴⣝⢿⡎⣧⣿⣾⣿⡿⡾⡿⣻⡟⣸⣿⢱⣿⡏⣺⡇⠌⢯⢻⣿⣿⣌⠸⡄⣻⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⢺⡇⢸⣧⢻⣿⠰⣽⣷⣬⣽⣾⡟⣷⣽⣾⣿⣿⣿⣼⣿⣿⣿⢃⣿⢿⣿⣿⠇⡟⢣⣇⠚⡼⣿⣿⣿⡔⢿⡌⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⢷⠁⢿⡜⣿⣄⡝⣿⣭⣦⣾⣿⣿⡿⠿⢟⣛⠿⣿⣿⣿⠏⠞⣡⣾⣿⡿⠠⣾⢈⣿⣰⠁⣿⣿⣿⣿⡜⡇⢿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠞⠨⣾⣷⠹⡅⢳⡘⣿⣿⣿⣿⡅⣶⣿⣿⣿⢃⣿⣿⣧⡾⢀⣿⣿⣿⢃⡌⣿⢠⣿⣿⠈⣿⣿⣿⣿⣷⡍⣽⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣼⢨⣿⣿⣧⡉⡇⣳⢈⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⡋⣰⡿⣹⡏⣼⠄⣿⢸⣿⣿⢨⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣴⣿⢸⣿⣿⡏⢿⡔⠸⢨⣿⣶⣬⣛⠿⣿⡿⠿⣋⣵⠶⢋⡖⡜⣴⡟⣸⣿⠅⣇⣿⣿⠏⣾⣿⣿⣿⣿⡿⢰⢸⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⢃⣿⡇⣿⡘⣿⣿⡇⣿⡷⢒⡐⠺⢋⣨⣼⣿⠁⣵⣿⢡⣿⣿⢹⣿⣿⢏⣼⣿⣿⣿⣿⠟⡁⢺⢸⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡯⢸⣿⣿⠂⢼⡇⡿⣛⣛⣛⣫⣥⣴⡿⡃⣿⣿⣿⣿⡇⢂⢿⣿⢸⣿⡧⣿⡿⣣⣾⣿⣿⡿⢛⣥⡾⣣⢏⣼⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⡿⢠⠹⢣⣾⣿⢁⣿⡙⣿⢏⣼⣧⣾⣿⣿⣿⠂⣙⠌⢿⡜⣫⣞⡩⠾⣛⣩⣭⣄⠌⣩⣡⣬⣶⠈⣿⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⢻⣿⣷⢸⠠⣿⣿⣣⡿⠟⣴⠙⢬⣝⢿⣿⠿⡛⢣⣿⡮⢛⣒⢡⣴⡅⣶⣿⣿⣿⣿⣿⣷⡝⢿⣿⣿⡈⢻⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢺⣿⡇⢸⠰⣿⠅⣴⣾⢐⣿⠰⢸⣿⣿⠟⣫⡵⢛⣭⣾⡇⠩⣘⣙⢢⣿⣿⣿⣿⣿⣿⣿⣿⣎⢿⣿⡆⡝⣿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⣾⢸⣿⡇⣿⢸⢋⣾⣿⣿⡜⢿⡎⡸⠟⢑⣫⣵⣾⣿⣿⢟⢈⣼⡿⢻⢐⣿⣿⣿⣿⣿⣿⣿⣿⣿⡌⣿⣇⣇⢿⣿⣿⣿⣿⣿⣿',
'⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣴⣿⡘⣿⣧⡏⢤⣿⣿⣿⡿⢛⡂⢶⣦⢉⡩⣍⡰⢤⣶⣶⢏⢾⣿⢱⣾⡔⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠸⣿⢸⠸⣿⣿⣿⣿⣿⣿',
}

g.dashboard_custom_section = {
  a = {description = {"  Find File                   <C-p>"}, command = "Telescope find_files"},
  b = {description = {"  Find Word                   <C-g>"}, command = "Telescope live_grep"},
  c = {description = {"  Recents                   SPC f o"}, command = "Telescope oldfiles"},
  d = {description = {"洛 New File                  SPC f n"}, command = "DashboardNewFile"},
  e = {description = {"  Bookmarks                 SPC b m"}, command = "Telescope marks"},
  f = {description = {"  Load Last Session         SPC s l"}, command = "SessionLoad"}
}

g.dashboard_custom_footer = {
  "   ",
  "Coots v0.5"
}
