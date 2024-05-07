 oh-my-posh init pwsh --config 'C:\Users\SOHAM DALAL\AppData\Local\Programs\oh-my-posh\themes\paradox.omp.json' | Invoke-Expression

 set-PSReadLineOption -PredictionViewStyle ListView

 set-alias -name eth -value get-netadapter

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
 