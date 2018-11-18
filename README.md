<p align="center"><img src="/docs/logo.png" alt="GWT Ethereum QR Code" width="120"></p>

# GWT Ethereum QR Code

[![Build Status](https://secure.travis-ci.org/realityforge/gwt-ethereum-qr-code.svg?branch=master)](http://travis-ci.org/realityforge/gwt-ethereum-qr-code)
[<img src="https://img.shields.io/maven-central/v/org.realityforge.gwt.ethereum_qr_code/gwt-ethereum-qr-code.svg?label=latest%20release"/>](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.realityforge.gwt.ethereum_qr_code%22)


A QR code generator for specifying Ethereum transactions based on [EIP67](https://github.com/ethereum/EIPs/issues/67)
and [EIP155](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-155.md) which was inspired by
[BIP-21](https://github.com/bitcoin/bips/blob/master/bip-0021.mediawiki).


## Quick Start

The simplest way to use the library is to add the dependency into the build system. i.e.

```xml
<dependency>
   <groupId>org.realityforge.gwt.ethereum_qr_code</groupId>
   <artifactId>gwt-ethereum-qr-code</artifactId>
   <version>0.02</version>
</dependency>
```

Then add the snippet `<inherits name='org.realityforge.gwt.ethereum_qr_code.EthereumQrCode'/>` into the `.gwt.xml` module file. Then
you can generate the svg via:

Render a url qr code as SVG:

```java
// TODO:
```

# More Information

For the source code and project support please visit the [GitHub project](https://github.com/realityforge/gwt-ethereum-qr-code).

# Contributing

The library was released as open source so others could benefit from the project. We are thankful for any
contributions from the community. A [Code of Conduct](CODE_OF_CONDUCT.md) has been put in place and
a [Contributing](CONTRIBUTING.md) document is under development.

# License

The library is licensed under [Apache License, Version 2.0](LICENSE).

# Credit

This library was created independently but after the initial build it was validated by comparing against
the [jibrelnetwork/ethereum-qr-code](https://github.com/jibrelnetwork/ethereum-qr-code) project.
