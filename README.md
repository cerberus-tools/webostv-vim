# webOS TV Vim resources
## Description 
This repository contains vimscripts and resources to help developer to write 
commit message, check commits, and do other actions 

## Install 
* Clone this repository as ${HOME}/.vim
```bash
git clone http://mod.lge.com/hub/tv_scm_tool/webostv-vim.git ${HOME}/.vim
```

* Update submodules. This command clones all required vim plugins registered as 'submodule'
```bash
$> pushd ~/.vim
~/.vim ~
$> git submodule init
Submodule 'bundle/vim-airline' (https://github.com/vim-airline/vim-airline) registered for path 'bundle/vim-airline'
$> git submodule update
Submodule path 'bundle/vim-airline': checked out 'a0298263b7fd55827839862ffd3a8d5b2a787a5c'
Cloning into '/Users/allessunjoo.park/.vim/bundle/vim-airline'...
$>
```

* Copy [vimrc](http://mod.lge.com/hub/tv_scm_tool/webostv-vim/blob/master/vimrc)'s content into your .vimrc
```bash
$> cat ${HOME}/.vim/vimrc >> ${HOME}/.vimrc
```

## Functions

### Insert meta layer's commit message template on 'Editor' mode.
* Key binding
   * ```,mc```
* Example 

```
MODULE_NAM=MODULE_VERSION

:Release Notes:
#Write a release note

:Detailed Notes:
#Write detailed notes

:Testing Performed:
#Write detailed test results

:Issues Addressed:
[ISSUEKEY-123] Change issue's key and subject
#Write a list of issues registered ?
```

### Download '.git/hook/commit-msg' from Gerrit site when opening vim
* Condition
  * A working directory is a git project
  * A repository exists on http://wall.lge.com:8110/
  * '.git/hook/commit-msg' doesnt' exist
* How
  * When running ```git commit``` or ```vim FILE_NAME```, ```commit-msg``` will be cloned to ```.git/hook/``` directory if needed
  * You don't need to do any actions except installing this repository

## Submodules

### Pathogen
* https://github.com/tpope/vim-pathogen
* Plugin Manager

### Airline
* https://github.com/vim-airline/vim-airline
* Status/Tabline tools

### gutantag_plus
* Links
  * https://github.com/skywind3000/gutentags_plus
  * https://github.com/ludovicchabant/vim-gutentags
* Required Tools 
  * https://ctags.io/
  * https://www.gnu.org/software/global/
* Install
  * [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags#how)
  * [gutentags_plus](https://github.com/skywind3000/gutentags_plus#installation)