# Friending Manual
[![Build][build-badge]][build-link]
[![License][license-badge]][license-link]
[![Friending][friending-badge]][friending-link]
[![Manual][manual-badge]][manual-link]

---

## Summary

The Friending user manual provides info and tips to help you understand the mobile application.  The project is the actualization of a user vision and set of requirements to construct a matchmaking application.  The User Manual encodes these requirements as scenarios and use cases, while the Friending prototype presents a high-fidelity vision of the matchmaking application.

## Friending

Friending is an online dating, friendship, and social networking mobile application that features user-created questionnaires. Friending has two primary features: joining groups to find people similar to you or signing up for events happening in your local area.  Friending is a prototype built with the Proto.io application prototyping tool.

The Friending prototype was built as part of a requirements specification project.  The project focused on the development of a user manual around a fictional matchmaking application called Friending.  The application centered around user-created questionnaires that could be used to find relationship matches.  The user manual was designed with the goal of deceiving the reader into believing that the application existed.  A project vision document and set of user requirements guided the development of scenarios and use cases for the application.   The user manual created for the requirements specification project is provided in this repository, available as a PDF.

## Development

If you are developing on Windows, it is recommended to install the IDE [Texmaker](http://www.xm1math.net/texmaker/), the universal LaTeX editor.  This will ensure that the necessary TexLive packages are installed (or can be installed).  The IDE Texmaker is the default IDE used in development of the project.

### Building

You can build the image using `latexmk`.  To build with pdf2htmlEX, you can either install pdf2htmlEX in your environment, or make use of the docker image.  To start the docker image, run the following:

```console
sh start.sh
```

To build with `latexmk`, you can do the following: 

```console
latexmk -pdf manual.tex
```

It is recommend to use the build scripts available in `build/`.   These scripts are used in the build pipeline, ensuring that all arguments and attributes are set for compilation of the TeX project.  The output pdf `manual.pdf` is available at the project root, while other build files are available in the `output/` directory.

```console
sh build/compile.sh
```

### GitLab CI

This project's manual is built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps defined in [`.gitlab-ci.yml`](.gitlab-ci.yml).  The build scripts are available in `build/`, which are used to compile the TeX file.

[build-badge]: https://gitlab.com/jrbeverly-friending/friending-manual/badges/master/build.svg
[build-link]: https://gitlab.com/jrbeverly-friending/friending-manual/commits/master

[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license-link]: LICENSE

[friending-badge]: https://img.shields.io/badge/friending-view-blue.svg?maxAge=2592000
[friending-link]: https://jrbeverly-friending.gitlab.io/friending

[manual-badge]: https://img.shields.io/badge/artifacts-view-red.svg?maxAge=2592000
[manual-link]: https://gitlab.com/jrbeverly-friending/friending-manual/builds/artifacts/master/download?job=build