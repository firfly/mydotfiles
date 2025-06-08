# Neovim from Scratch

This neovim configuration is being build up incrementally from scratch on a video series on my [YouTube channel: MrJakob](https://youtube.com/c/MrJakob).

You may use this configuration as an inspiration to create youre own. Follow the [Video Series](https://youtube.com/playlist?list=PLy68GuC77sURrnMNi2XR1h58m674KOvLG&si=PNSk8Y-LUbYW_Yec) to get a better understanding of where to start when rolling a Neovim configuration from scratch.

If you are interested my currently used personal configuration and setup, you can always find my complete shell environment in my [dotfiles](https://github.com/jakobwesthoff/dotfiles) repository on [github](https://github.com/jakobwesthoff).

## Videos

* [Neovim from Scratch - Part 1: lazy.nvim, kanagawa.nvim, oil.nvim, Statusline & Essential Settings](https://youtu.be/g1gyYttzxcI)
* [Neovim from Scratch - Part 2: Supercharged Code Navigation via Treesitter, Textobjects & which-key](https://youtu.be/E4qXZv34NQQ)
* [Insanely fast Neovim Navigation with fzf❤️lua | Configuration from Scratch Part 3](https://youtu.be/R3e7uAE8jjo)
* [Code Intelligence in Neovim - The LSP Setup that grants you IDE Powers | Neovim from Scratch Part 4](https://youtu.be/b17g20II6SQ)
* [Perfect Code Formatting with conform.nvim | Neovim Configuration from Scratch Part 5](https://youtu.be/UVO_cq3xATo)
* [blink-cmp: Lightning-Fast Autocompletion Built in Rust | Neovim from Scratch Part 6](https://youtu.be/GKIxgCcKAq4)

## The Plan

- [X] lazy.nvim
- [X] kanagawa.nvim
- [X] mini.statusline
- [X] oil.nvim
- [X] Basic options 
- [X] vim-sleuth
- [X] editorconf
- [X] showkeys
- [X] treesitter.nvim
- [X] treesitter-textobjects
- [X] which-key
- [X] fzflua
- [X] project.nvim
- [X] LSP 
- [X] Mason
- [X] dressing.nvim
- [X] conform.nvim
- [X] blink-cmp

# frac 
## header 2
### header 3
#### header 4

$$ 
\frac{abc123}{xyz123}
$$


##### header 5 

$$
\left|\begin{matrix}
a & b & c \\
d & e & f \\
g & h & i
\end{matrix} \right|
$$

| Column1 | Column2 | Column3 |
| --------------- | --------------- | --------------- |
| Item1.1 | Item2.1 | Item3.1 |
| Item1.2 | Item2.2 | Item3.2 |
| Item1.3 | Item2.3 | Item3.3 |
| Item1.4 | Item2.4 | Item3.4 |



```python
import subprocess

def is_website_reachable():
    try:
        subprocess.run(["ping","-c","1","example.com"], check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        print("Website is reachable")
        except subprocess.CalledProcessError:
            pass

        is_website_reachable()
```


### Without prettier-ignore

- Below I will not add <!-- prettier-ignore-->, so notice how prettier will auto format the callouts
- Below ones work with snippets:
[!note] This is a "note"
[!tip] This is a "tip"

