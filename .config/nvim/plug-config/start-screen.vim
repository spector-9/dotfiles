let g:startify_custom_header = [
            \ '  _________                     __                 ',
            \ ' /   _____/_____   ____   _____/  |_  ___________  ',
            \ ' \_____  \\____ \_/ __ \_/ ___\   __\/  _ \_  __ \ ',
            \ ' /        \  |_> >  ___/\  \___|  | (  <_> )  | \/ ',
            \ '/_______  /   __/ \___  >\___  >__|  \____/|__|    ',
            \ '        \/|__|        \/     \/                    ',
            \]

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'z': '~/.zshrc' },
            \ '~/projects',
            \ ]
