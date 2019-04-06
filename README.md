# James

[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/mdbs99/james/blob/master/README.md)

James is a collection of object-oriented Pascal primitives.

**ATTENTION:** We're still in a very early alpha version, the API may and will change frequently. Please, use it at your own risk, until we release version 1.0.

# Table of Contents

- [Overview](#overview)
- [Installing](#installing)
  - [On Lazarus](#on-lazarus)
  - [On Delphi](#on-delphi)
- [Dependencies](#dependencies)
- [Getting Started](#getting-started)
- [License](#license)

# Overview

This API is being written in [Free Pascal](https://freepascal.org/) and [Lazarus](http://www.lazarus-ide.org/). However, it is also compatible with [Delphi](https://www.embarcadero.com/products/delphi).

The main goal is to replace common procedural code in our projects, which has so many conditionals and "controllers", to a declarative and object-oriented code.

We want to write elegant, clean, organized, interface-based, and maintainable code using OOP.

# Installing

- Clone the repository in some directory in your computer.
- For each project you just need to setup the paths, which depends on your platform are you using.
- See [Dependencies](#dependencies) below too

## On Lazarus

Considering `<james>` as the path where you have saved the sources, your project must include these paths:

- Other unit files (-Fu)
  - include `<james>\src;<james>\src\fpc`
- Include files (-Fi)
  - include `<james>\src;<james>\src\fpc`

## On Delphi

Considering `<james>` as the path where you have saved the sources, your project must include these paths:

- Search Path
  - include `<james>\src;<james>\src\delphi`
  
# Dependencies

- [mORMot](https://github.com/synopse/mORMot) — client-server ORM SOA MVC framework for Delphi 6 up to latest Delphi and FPC
  - You need to [install](https://synopse.info/files/html/Synopse%20mORMot%20Framework%20SAD%201.18.html#TITL_113) it first. Basically, it means clone the repository in some directory in your computer. That's all.
  - As mORMot do not have packages, it works only by paths. 

To run James TestAll project easily you should save mORMot at the same level of James:

    lib
      james
      mormot
      
Alternatively, you can change paths of TestAll pointing to your copy of mORMot in another place.

# Getting Started

Under construction...

# License

This project is released under MIT license. See [LICENSE](LICENSE).