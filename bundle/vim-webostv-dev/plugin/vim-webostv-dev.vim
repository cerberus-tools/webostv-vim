" Common Vim properties
" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

let mapleader = ","

" LGE webOS TV developer configuration
" Check if this file belongs to a git project {{{
let gitdir = system("git rev-parse --git-dir| tr -d '\n'")
let curr_date = strftime('%c')
let curr_pwd = expand('%:p')
let msg = "echo \"$(date | tr -d '\n') INFO: current_working_dir " . gitdir . "\" >> ${HOME}/.vim/log"
echom(system(msg))
if !isdirectory(gitdir)
  let msg = "echo $(date |tr -d '\n') INFO: This file does not belong to a git project >> ${HOME}/.vim/log"
  echom(system(msg))
  let temp_cmd = "echo " . curr_pwd . " >> ${HOME}/.vim/log"
  echom(system(temp_cmd))
else
  let commit_msg_file = gitdir . "/hooks/commit-msg"
  if filereadable(commit_msg_file)
    let msg = "echo \"$(date | tr -d '\n') INFO: " . commit_msg_file . " file exists\" >> ${HOME}/.vim/log"
    echom(system(msg))
  else
    let get_hook_cmd = "scp -p -P 29448 wall.lge.com:hooks/commit-msg " . gitdir . "/hooks/"
    let r = system(get_hook_cmd)
    echom curr_date . " INFO: Download " . commit_msg_file . ": Complete"
  endif
endif
" }}}

" Meta Layer Commit Message {{{
let g:meta_layer_commit_msg_templates="MODULE_NAM=MODULE_VERSION\n
\\n
\:Release Notes:\n
\#Write a release note\n
\\n
\:Detailed Notes:\n
\#Write detailed notes\n
\\n
\:Testing Performed:\n
\#Write detailed test results\n
\\n
\:Issues Addressed:\n
\[ISSUEKEY-123] Change issue's key and subject\n
\#Write a list of issues registered on a issue tracking system\n
\\n\n
\"
inoremap <leader>mc <esc>gg^i<C-R>=strftime(meta_layer_commit_msg_templates)<CR><esc>ggk^i<CR>
nnoremap <leader>mc gg^i<C-R>=strftime(meta_layer_commit_msg_templates)<CR><esc>ggk^i<CR>
" }}}
