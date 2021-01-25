# Bidirectional Attention Using Transformers within individual Han (CJK) Character Recognition
This README will be updated at a later date, for now details can be found within the [overview.pdf](https://raw.githubusercontent.com/musotec/cjk-character-recognition/main/overview.pdf). A summary can be found on [page 7](https://raw.githubusercontent.com/musotec/cjk-character-recognition/main/overview.pdf#page.7).

KanjiVG is used for example handwritten input in various figures throughout the overview pdf.

[KanjiVG](https://github.com/KanjiVG/kanjivg) is copyright Ulrich Apel and released under the Creative Commons Attribution-Share Aline 3.0
license: 

http://creativecommons.org/licenses/by-sa/3.0/

The SVG conversion to TikZ is performed by this python script: https://github.com/paaguti/svg2tikz

### Build Instructions
Run `config-latex.sh` script to configure the latex environment.
Notable CTAN packages that may be missing are pgf, csquotes, luatexja, and haranoaji (fonts).

Sources are added as individually as .bib files to `/references`.
These must have the first line as `@string{ ... ,\n` (new line after tag) due to the compilation script.
The name of the reference is renamed to match the file name for better organization.

These must be compiled to a single bibliography using the `compile-sources.sh` script.

The pdf file `overview.pdf` can be compiled using the following command:
```
lualatex -synctex=1 -interaction=nonstopmode "overview".tex
```
