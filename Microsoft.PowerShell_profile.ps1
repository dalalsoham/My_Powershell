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
set-alias cl cls

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
  function myneovim { cd "C:\Users\SOHAM DALAL\AppData\Local\nvim" }
  function myshell {cd "C:\Users\SOHAM DALAL\OneDrive\Documents\PowerShell"}
  function myresume {cd "D:\Downloads\Resume update"}
  function home {cd "C:\Users\SOHAM DALAL"}

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

  function GitPushMaster {
    git push -u origin master
  }

  Set-Alias gmaster GitPushMaster

  function GitPushMain {
    git push -u origin main
  }

  Set-Alias gmain GitPushMain

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
Set-Alias v NeoVim

# dir change shortcut
function dir1{
  cd ../
}
Set-Alias d1 dir1

function dir2{
    cd ../../
  }
Set-Alias d2 dir2

function dir3{
    cd ../../../
  }
Set-Alias d3 dir3

function dir4{
    cd ../../../../
  }
Set-Alias d4 dir4

function dir5{
    cd ../../../../../
  }
Set-Alias d5 dir5

# for dir check 'pwd'
function pwdir{
    pwd
  }
Set-Alias whichpath pwdir

#thefuck auto-correcter for cmd
# Alias for thefuck
Set-Alias fuck thefuck

# Function to use thefuck's alias command
function Invoke-TheFuck {
    $lastCommand = (Get-History -Count 1).CommandLine
    $fuckCmd = thefuck $lastCommand
    if ($fuckCmd) {
        Invoke-Expression $fuckCmd
    } else {
        Write-Output "No fucks given"
    }
}
Set-Alias damn Invoke-TheFuck
