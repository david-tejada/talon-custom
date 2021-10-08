app: vscode
-

jump before: 
    user.vscode("metaGo.gotoBefore")
    sleep(50ms)
jump after: 
    user.vscode("metaGo.gotoAfter")
    sleep(50ms)
clear until: 
    user.vscode("metaGo.metaJump.deleteToSmart")    
    sleep(50ms)
select before:
    user.vscode("metaGo.selectBefore")
    sleep(50ms)
select after:
    user.vscode("metaGo.selectAfter")
    sleep(50ms)

panel right:
    user.vscode("workbench.action.focusRightGroup")    
panel left:
    user.vscode("workbench.action.focusLeftGroup")    
panel up:
    user.vscode("workbench.action.focusBelowGroup")
panel down:
    user.vscode("workbench.action.focusAboveGroup")