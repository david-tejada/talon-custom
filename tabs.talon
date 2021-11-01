os: linux
tag: user.tabs
-

(tab | tabby) (open | new): app.tab_open()
(tab | tabby) (last | previous): app.tab_previous()
(tab | tabby) next: app.tab_next()
(tab | tabby) close: user.tab_close_wrapper()
(tab | tabby) (reopen|restore): app.tab_reopen()
(tab | tabby) <number>: user.tab_jump(number)
(tab | tabby) final: user.tab_final()
