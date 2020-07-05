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

# Add command for vim-mode-plus, move up 5 steps
atom.commands.add 'atom-text-editor', 'custom:do-5-k': (e) ->
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-count-5')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:move-up')
# Add command for vim-mode-plus, move down 5 steps
atom.commands.add 'atom-text-editor', 'custom:do-5-j': (e) ->
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-count-5')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:move-down')
# Add command for vim-mode-plus, move left 5 steps
atom.commands.add 'atom-text-editor', 'custom:do-5-h': (e) ->
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-count-5')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:move-left')
# add command for vim-mode-plus, move right 5 steps
atom.commands.add 'atom-text-editor', 'custom:do-5-l': (e) ->
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-count-5')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:move-right')
# Add command for vim-mode-plus, paste 0 register
atom.commands.add 'atom-text-editor', 'custom:paste-0-reg': (e) ->
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-register-name')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:set-input-char-0')
   atom.commands.dispatch(e.currentTarget, 'vim-mode-plus:put-after')

# Add command for tree-view, move up 5 steps
atom.commands.add '.tree-view', 'custom:tree-do-5-k': (e) ->
   atom.commands.dispatch(e.currentTarget, 'core:move-up')
   atom.commands.dispatch(e.currentTarget, 'core:move-up')
   atom.commands.dispatch(e.currentTarget, 'core:move-up')
   atom.commands.dispatch(e.currentTarget, 'core:move-up')
   atom.commands.dispatch(e.currentTarget, 'core:move-up')
# Add command for tree-view, move down 5 steps
atom.commands.add '.tree-view', 'custom:tree-do-5-j': (e) ->
   atom.commands.dispatch(e.currentTarget, 'core:move-down')
   atom.commands.dispatch(e.currentTarget, 'core:move-down')
   atom.commands.dispatch(e.currentTarget, 'core:move-down')
   atom.commands.dispatch(e.currentTarget, 'core:move-down')
   atom.commands.dispatch(e.currentTarget, 'core:move-down')

# Add command for cscope, toggle cscope and find-symbol
atom.commands.add 'atom-workspace', 'custom:cscope-find-symbol': (e) ->
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:toggle')
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:find-symbol')
# Add command for cscope, toggle cscope and find-global-definition
atom.commands.add 'atom-workspace', 'custom:cscope-find-global-definition': (e) ->
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:toggle')
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:find-global-definition')
# Add command for cscope, toggle cscope and find-text-string
atom.commands.add 'atom-workspace', 'custom:cscope-find-text-string': (e) ->
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:toggle')
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:find-text-string')
# Add command for cscope, toggle cscope and find-file
atom.commands.add 'atom-workspace', 'custom:cscope-find-file': (e) ->
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:toggle')
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:find-file')
# Add command for cscope, toggle cscope and find-functions-calling
atom.commands.add 'atom-workspace', 'custom:cscope-find-functions-calling': (e) ->
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:toggle')
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:find-functions-calling')
# Add command for cscope, toggle cscope and find-files-including
atom.commands.add 'atom-workspace', 'custom:cscope-find-files-including': (e) ->
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:toggle')
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:find-files-including')
# Add command for cscope, toggle cscope and toggle-file
atom.commands.add 'atom-workspace', 'custom:cscope-toggle-file': (e) ->
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:toggle')
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:toggle')
   atom.commands.dispatch(e.currentTarget, 'atom-cscope:toggle-file')
