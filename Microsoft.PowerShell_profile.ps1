 #oh-my-posh config and file path
 oh-my-posh init pwsh --config 'C:\Users\SOHAM DALAL\AppData\Local\Programs\oh-my-posh\themes\paradox.omp.json' | Invoke-Expression

 #list view in powershell
 set-PSReadLineOption -PredictionViewStyle ListView

 #adapter device connection 
 set-alias -name eth -value get-netadapter

 #git command shortcut all
 function goGoGadgetGit {
    Param(
      [Parameter(Mandatory = $true, Position = 0)]
      [String]
      $Cmd,
  
      [Parameter(Mandatory = $false, ValueFromRemainingArguments = $true)]
      [String[]]
      $Params
    )
  
    Switch ($Cmd)
    {
      # status
      's' { git status $Params }
      #init
      'i' {git init $Params }
      #add
      'a' {git add $Params }
      #branch
      'b' {git branch $Params }
      #checkout
      'ch' {git checkout $Params }
      #clean
      'cl' {git clean $Params }
      #clone
      'cln' {git clone $Params }
      #commit
      'cm' {git commit $Params }
      #config
      'cf' {git config $Params }
      #log
      'l' {git log $Params }
      #merge
      'm' {git merge $Params }
      #pull
      'pl' {git pull $Params }
      #push
      'pu' {git push $Params }
      #remote
      're' {git remote $Params }
    }
  }
  Set-Alias g goGoGadgetGit
 
  #my important path shortcut
  function prod { cd "D:\projects_new" }
  function cloned { cd "D:\github_clone_in_d"}

  #my powershell folder shortcut
  function power {cd "C:\Users\SOHAM DALAL\OneDrive\Documents\PowerShell"}