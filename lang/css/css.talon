code.language: css
-
tag(): user.code_generic

prop {user.css_properties}: 
    insert(user.css_properties)
    insert(": ;")
    key(left)

prop {user.css_properties} {user.css_values}: 
    insert(user.css_properties)
    insert(": ;")
    key(left)
    insert(user.css_values)

<number> {user.css_units}:
    insert(number)
    insert(user.css_units)

value {user.css_values}:
    insert(user.css_values)

pseudo {user.css_pseudo}:
    insert(user.css_pseudo)

# block:
#     insert("{}")
#     key("left enter")
