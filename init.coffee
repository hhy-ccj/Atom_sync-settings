# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# add command for vim-mode-plus, move up 5 steps
atom.commands.add 'atom-text-editor', 'custom:do-5-k': (e) ->
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-count-5')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:move-up')
# add command for vim-mode-plus, move down 5 steps
atom.commands.add 'atom-text-editor', 'custom:do-5-j': (e) ->
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-count-5')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:move-down')
# add command for vim-mode-plus, move left 5 steps
atom.commands.add 'atom-text-editor', 'custom:do-5-h': (e) ->
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-count-5')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:move-left')
# add command for vim-mode-plus, move right 5 steps
atom.commands.add 'atom-text-editor', 'custom:do-5-l': (e) ->
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-count-5')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:move-right')
# add command for vim-mode-plus, paste 0 register
atom.commands.add 'atom-text-editor', 'custom:paste-0-reg': (e) ->
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-register-name')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-input-char-0')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:put-after')
