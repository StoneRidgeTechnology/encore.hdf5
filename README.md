# module::encore.hdf5  [![status](https://github.com/Wandalen/encore.hdf5/workflows/publish/badge.svg)](https://github.com/Wandalen/encore.hdf5/actions?query=workflow%3Apublish) [![stability-experimental](https://img.shields.io/badge/stability-experimental-orange.svg)](https://github.com/emersion/stability-badges#experimental)

HDF5 [binding](https://github.com/Wandalen/encore.hdf5.binding) with install.

### How to add to your project

```bash
npm add encore.hdf5@stable
```

### Try out

```javascript
var path = require( 'path' );
var hdf5 = require( '../..' ).hdf5;
var Access = require( '../..' ).globals.Access;

var file = new hdf5.File( path.join( __dirname, './File.h5' ), Access.ACC_RDONLY );
var members = file.getMemberNames();

console.log( members );

/*
log:
[ 'group1' ]
*/

file.close();

```

[Source code](./sample/trivial/Sample.ss)