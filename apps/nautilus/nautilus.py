from talon import Context, Module, actions

mod = Module()
ctx = Context()
ctx.matches = r"""
tag: user.file_manager
"""

mod.list('folder', desc='Folder in the system')
ctx.lists['user.folder'] = {
    "home": "~",
    "docks": "~/Documents",
    "downloads": "~/Downloads",
    "desktop": "~/Desktop",
    "root": "/"
}


@ctx.action_class("user")
class user_actions:
    def file_manager_open_user_directory(path: str):
        actions.insert(f"~/{path}")
        actions.key("enter")

    def file_manager_open_directory(path: str):
        actions.insert(path)
        actions.key("enter")

    def file_manager_go_back():
        actions.key("alt-left")
    def file_manager_go_forward():
        actions.key("alt-right")
    def file_manager_open_parent():
        actions.key("alt-up")