# Friending Manual
[![Build][build-badge]][build-link]
[![License][license-badge]][license-link]
[![Friending][friending-badge]][friending-link]
[![Manual][manual-badge]][manual-link]

---

## Summary

The Friending user manual provides info and tips to help you understand the mobile application.  The project is the actualization of a user vision and set of requirements to construct a matchmaking application.  The User Manual encodes these requirements as scenarios and use cases, while the Friending prototype presents a high-fidelity vision of the matchmaking application.

## Friending

Friending is an online dating, friendship, and social networking mobile application that features user-created questionnaires. Friending has two primary features: joining groups to find people similar to you or registering for events happening in your local area.  Friending is a prototype built with the Proto.io application prototyping tool.

The Friending prototype was built as part of a requirements specification project.  The requirements specification project involved constructing a user manual based on a project vision document as well as a set of user requirements.  The User Manual was designed with the goal of deceiving the reader into believing that the application actually existed.  Proto.io was the perfect tool to accomplish this goal in order to ensure that the presentation of Friending in the user manual is visually consistent and believable.  Proto.io provides a fully-interactive high-fidelity prototype that look and work similar to the described application in the user manual.

## Development

If you are developing on Windows, it is recommended to install the IDE [Texmaker](http://www.xm1math.net/texmaker/), the universal LaTeX editor.  This will ensure that the necessary TexLive packages are installed (or can be installed) as well as enabling development.

### Building

You can build the image using `latexmk`.  To build with `latexmk`, you can do the following:

```console
latexmk -pdf manual.tex
```

It is recommend to use the build scripts available in `build/`.   These scripts are used in the build pipeline, ensuring that all arguments and attributes are set for compilation of the TeX project.  These should be run from the root of the project directory.

```console
sh build/compile.sh
```

### GitLab CI

This project's manual is built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps defined in [`.gitlab-ci.yml`](.gitlab-ci.yml).  The build scripts are available in `build/`, which are used to compile the TeX file.

## Proto io
[Proto.io](https://proto.io/) is a web service to create fully-interactive high-fidelity prototypes that look and work exactly like your app should. No coding required.  Using Proto.io you can quickly design and prototype design ideas.  

[build-badge]: https://gitlab.com/jrbeverly-friending/friending-manual/badges/master/build.svg
[build-link]: https://gitlab.com/jrbeverly-friending/friending-manual/commits/master

[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license-link]: LICENSE

[friending-badge]: https://img.shields.io/badge/friending-view-blue.svg?maxAge=2592000
[friending-link]: https://jrbeverly-friending.gitlab.io/friending

[manual-badge]: https://img.shields.io/badge/artifacts-view-red.svg?maxAge=2592000
[manual-link]: https://gitlab.com/jrbeverly-friending/friending-manual/builds/artifacts/master/download?job=compile_pdf