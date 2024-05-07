 #oh-my-posh config and file path
 oh-my-posh init pwsh --config 'C:\Users\SOHAM DALAL\AppData\Local\Programs\oh-my-posh\themes\paradox.omp.json' | Invoke-Expression

 #list view in powershell
 set-PSReadLineOption -PredictionViewStyle ListView

 #adapter device connection 
 set-alias -name eth -value get-netadapter

 
 
  #my important path shortcut
  function prod { cd "D:\projects_new" }
  function cloned { cd "D:\github_clone_in_d"}
  function mywebsite { cd "D:\My_Portfolio" }

  #my powershell folder shortcut
  function power {cd "C:\Users\SOHAM DALAL\OneDrive\Documents\PowerShell"}

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