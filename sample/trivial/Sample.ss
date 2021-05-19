
var path = require( 'path' );
var hdf5 = require( '../..' ).hdf5;
var Access = require( '../../js/encore/hdf5/globals' ).Access;

var file = new hdf5.File( path.join( __dirname, './File.h5' ), Access.ACC_RDONLY );
var members = file.getMemberNames();

console.log( members );

/*
log:
[ 'group1' ]
*/

file.close();
