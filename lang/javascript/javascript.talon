mode: command
and mode: user.javascript
mode: command
and mode: user.auto_lang
and code.language: javascript
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic

settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"

console log | clog: 
    insert("console.log()")
    key(left)  
    
state spread: "..."
        
new <user.text>:
    insert("new ")
    insert(user.formatted_text(user.text, "PUBLIC_CAMEL_CASE"))
    insert('()')
    key(left)  
    
let <user.text>:
    insert("let ")
    insert(user.formatted_text(user.text, "PRIVATE_CAMEL_CASE"))
    
constant <user.text>:
    insert("const ")
    insert(user.formatted_text(user.text, "PRIVATE_CAMEL_CASE"))
    
var <user.text>:
    insert("var ")
    insert(user.formatted_text(user.text, "PRIVATE_CAMEL_CASE"))
    
chain <user.text>:
    insert('.')
    insert(user.formatted_text(user.text, "PRIVATE_CAMEL_CASE"))
    insert('()')
    key(left)    
    
proper <user.text>:
    insert(user.formatted_text(user.text, "PRIVATE_CAMEL_CASE"))
    insert(": ")