# OneTrueEditorVim

My personal Vim configuration for windows
Place in c:/Users/Username/ directory

## Motivation

Moving from computer to computer, this is much easier to just pull and all is good

## Overall Setup

* Pathogen is used to keep all the Plugins in separete folders
* Each foldere in /bundle is a git submodule that can be update invidually

## Useful Commands
Creates a submodule (execute inside /bundle/)

    git submodule add <git repository path>

The following will init the submodules and download ALL of them

    git submodule init
    git submodule update

Or you can do this when you pull

    git clone https://github.com/ObjectiveTruth/OneTrueEditorVim.git --recursive

## License
The MIT License (MIT)

Copyright (c) 2015

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
