from platform import freedesktop_os_release
configs = ["neovim", "alacritty", "zsh"] # Change this
from typing import Callable


setup: dict[str, tuple[bool, Callable]] = { config:(False, lambda: None) for config in configs }

def take_input(setup: str) -> bool:
    user_input = ""
    while user_input.lower() != "y" and user_input.lower() != "n":
        user_input = input(f"Install/setup {setup} (y/n): ")
    return user_input.lower() == "y"

def install():
    for (is_required, install_func) in setup.values():
        if is_required:
            install_func()

def main():
    os_id = freedesktop_os_release().get("ID")
    if os_id is None:
        print("Cannot get current OS")
        exit(1)
    print("Xenedium's dev environment installation script !")
    for config in setup:
        setup[config] = (take_input(config), getattr(__import__(config), os_id))
    install()

if __name__ == "__main__":
    main()
