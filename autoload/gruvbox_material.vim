function! gruvbox_material#get_configuration()
  return {
        \ 'background': get(g:, 'gruvbox_material_background', 'medium'),
        \ 'foreground': get(g:, 'gruvbox_material_foreground', get(g:, 'gruvbox_material_palette', 'material')),
        \ }
endfunction

function! gruvbox_material#get_palette()
  if &background ==# 'dark'
    let palette = {
          \ 'bg_dim':           ['#141617',   '232'],
          \ 'bg0':              ['#1d2021',   '234'],
          \ 'bg1':              ['#282828',   '235'],
          \ 'bg2':              ['#282828',   '235'],
          \ 'bg3':              ['#3c3836',   '237'],
          \ 'bg4':              ['#3c3836',   '237'],
          \ 'bg5':              ['#504945',   '239'],
          \ 'bg_statusline1':   ['#282828',   '235'],
          \ 'bg_statusline2':   ['#32302f',   '235'],
          \ 'bg_statusline3':   ['#504945',   '239'],
          \ 'bg_diff_green':    ['#32361a',   '22'],
          \ 'bg_visual_green':  ['#333e34',   '22'],
          \ 'bg_diff_red':      ['#3c1f1e',   '52'],
          \ 'bg_visual_red':    ['#442e2d',   '52'],
          \ 'bg_diff_blue':     ['#0d3138',   '17'],
          \ 'bg_visual_blue':   ['#2e3b3b',   '17'],
          \ 'bg_visual_yellow': ['#473c29',   '94'],
          \ 'bg_current_word':  ['#32302f',   '236'],
          \ 'fg0':              ['#ebdbb2',   '223'],
          \ 'fg1':              ['#ebdbb2',   '223'],
          \ 'red':              ['#fb4934',   '167'],
          \ 'orange':           ['#fe8019',   '208'],
          \ 'yellow':           ['#fabd2f',   '214'],
          \ 'green':            ['#b8bb26',   '142'],
          \ 'aqua':             ['#8ec07c',   '108'],
          \ 'blue':             ['#83a598',   '109'],
          \ 'purple':           ['#d3869b',   '175'],
          \ 'bg_red':           ['#cc241d',   '124'],
          \ 'bg_green':         ['#b8bb26',   '106'],
          \ 'bg_yellow':        ['#fabd2f',   '172'],
          \ 'grey0':            ['#7c6f64',   '243'],
          \ 'grey1':            ['#928374',   '245'],
          \ 'grey2':            ['#a89984',   '246'],
          \ 'none':             ['NONE',      'NONE']
          \ }
  else
    let palette = {
          \ 'bg_dim':           ['#f3eac7',   '229'],
          \ 'bg0':              ['#f9f5d7',   '230'],
          \ 'bg1':              ['#f5edca',   '229'],
          \ 'bg2':              ['#f3eac7',   '229'],
          \ 'bg3':              ['#f2e5bc',   '228'],
          \ 'bg4':              ['#eee0b7',   '223'],
          \ 'bg5':              ['#ebdbb2',   '223'],
          \ 'bg_statusline1':   ['#f5edca',   '223'],
          \ 'bg_statusline2':   ['#f3eac7',   '223'],
          \ 'bg_statusline3':   ['#eee0b7',   '250'],
          \ 'bg_diff_green':    ['#e4edc8',   '194'],
          \ 'bg_visual_green':  ['#dde5c2',   '194'],
          \ 'bg_diff_red':      ['#f8e4c9',   '217'],
          \ 'bg_visual_red':    ['#f0ddc3',   '217'],
          \ 'bg_diff_blue':     ['#e0e9d3',   '117'],
          \ 'bg_visual_blue':   ['#d9e1cc',   '117'],
          \ 'bg_visual_yellow': ['#f9eabf',   '226'],
          \ 'bg_current_word':  ['#f3eac7',   '229'],
          \ 'fg0':              ['#3c3836',   '237'],
          \ 'fg1':              ['#3c3836',   '237'],
          \ 'red':              ['#9d0006',   '88'],
          \ 'orange':           ['#af3a03',   '130'],
          \ 'yellow':           ['#b57614',   '136'],
          \ 'green':            ['#79740e',   '100'],
          \ 'aqua':             ['#427b58',   '165'],
          \ 'blue':             ['#076678',   '24'],
          \ 'purple':           ['#8f3f71',   '96'],
          \ 'bg_red':           ['#ae5858',   '88'],
          \ 'bg_green':         ['#6f8352',   '100'],
          \ 'bg_yellow':        ['#a96b2c',   '130'],
          \ 'grey0':            ['#a89984',   '246'],
          \ 'grey1':            ['#928374',   '245'],
          \ 'grey2':            ['#7c6f64',   '243'],
          \ 'none':             ['NONE',      'NONE']
          \ }
  endif
  return palette
endfunction

function! gruvbox_material#highlight(group, fg, bg, ...)
  execute 'highlight' a:group
        \ 'guifg=' . a:fg[0]
        \ 'guibg=' . a:bg[0]
        \ 'ctermfg=' . a:fg[1]
        \ 'ctermbg=' . a:bg[1]
        \ 'gui=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'cterm=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'guisp=' . (a:0 >= 2 ?
          \ a:2[0] :
          \ 'NONE')
endfunction
