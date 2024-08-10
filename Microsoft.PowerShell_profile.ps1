 #oh-my-posh config and file path
 oh-my-posh init pwsh --config 'C:\Users\SOHAM DALAL\AppData\Local\Programs\oh-my-posh\themes\robbyrussell.omp.json' | Invoke-Expression

#Terminal icons
Import-Module Terminal-Icons

#list view in powershell
set-PSReadLineOption -PredictionViewStyle ListView

#psreadline delete char
set-PSReadLineKeyHandler -Chord 'ctrl+d' -function DeleteChar

#Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
function f {
  nvim (fzf)
}
function ff {
  vim (fzf)
}

#adapter device connection 
set-alias -name eth -value get-netadapter

# ls change to ll command
set-alias ll ls

#cls change to cc
set-alias cc cls

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
 
 #my important path shortcut
  function prod { cd "D:\projects_new" }
  function cloned { cd "D:\github_clone_in_d"}
  function myweb { cd "D:\My_Portfolio" }
  function myneodetails {cd "D:\My_Neovim_Details"}

  #neovim path open shortcut
  function myneovim { cd "C:\Users\SOHAM DALAL\AppData\Local\nvim" }

  #my powershell folder shortcut
  function mypowershell {cd "C:\Users\SOHAM DALAL\OneDrive\Documents\PowerShell"}

  #npm shortcut
  function NpmDev {

    npm run dev
  
  }
  
  Set-Alias nd NpmDev

  function NpmStart {

    npm start
  }

  Set-Alias ns NpmStart

  function NpmInstall {

    npm install
  }

  Set-Alias nins NpmInstall

  function CreatReactApp {
    npx create-react-app
  }

  Set-Alias ncr CreatReactApp

 #git command shortcut all
  function GitInit {
    git init
  }

  Set-Alias gin GitInit

  function GitStatus {
    git status
  }

  Set-Alias gs GitStatus

  function GitAdd {
    git add .
  }

  Set-Alias gaa GitAdd

  function GitBranch {
    git branch
  }

  Set-Alias gb GitBranch

  function GitCheckOut {
    git checkout
  }

  Set-Alias gch GitCheckOut

  function GitClean {
    git clean
  }

  Set-Alias gcln GitClean

  function GitCommit {
    git commit -m
  }

  Set-Alias gcommit GitCommit

  function GitConfig {
    git config
  }

  Set-Alias gcon GitConfig

  function Gitlog {
    git log
  }

  Set-Alias glog GitLog

  function GitMerge {
    git merge
  }

  Set-Alias gmerge GitMerge

  function GitPull {
    git pull
  }

  Set-Alias gpl GitPull

  function GitPush {
    git push
  }

  Set-Alias gpu GitPush

  function GitRemote {
    git remote
  }

  Set-Alias gre GitRemote

  function GitDiff {
    git diff
  }

  Set-Alias gdi GitDiff

  function GitRemoteAddOrigin {
    git remote add origin 
  }

  Set-Alias gorigin GitRemoteAddOrigin

  function GitPushUOriginMaster {
    git push -u origin master
  }

  Set-Alias gmaster GitPushUOriginMaster

  function GitPushUOriginMain {
    git push -u origin main
  }

  Set-Alias gmain GitPushUOriginMain

#vs code open shortcut "code ."
function VsCode {
  code .
}
Set-Alias vs VsCode

#nvim open shortcut "nv"
function NeoVim{
  nvim .
}
Set-Alias neo NeoVim
