mode: command
and mode: user.css
mode: command
and mode: user.auto_lang
and code.language: css
-
tag(): user.code_generic

<user.css_declaration>:
    user.insert_css_declaration(user.css_declaration)

{user.css_units}:
    insert(user.css_units)

value {user.css_values}:
    insert(user.css_values)

pseudo {user.css_pseudo}:
    insert(user.css_pseudo)

funky {user.css_functions}:
    insert(user.css_functions)
    insert("()")
    key(left)

variable <user.text>:
    insert("--")
    user.insert_formatted(text, "DASH_SEPARATED")
