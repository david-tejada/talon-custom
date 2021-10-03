app: vscode
-

jump before [<user.text>]: 
    user.vscode("metaGo.goto Before")
    sleep(50ms)
    insert(user.text or "")

jump after [<user.text>]: 
    user.vscode("metaGo.goto After")
    sleep(50ms)
    insert(user.text or "")