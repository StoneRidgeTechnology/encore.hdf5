( function _Installation_test_ss_()
{

'use strict';

//

if( typeof module !== 'undefined' )
{
  const _ = require( 'wTools' );
  _.include( 'wTesting' );
}

//

const _ = _global_.wTools;
const __ = _globals_.testing.wTools;
const fileProvider = __.fileProvider;
const path = fileProvider.path;

// --
// context
// --

function onSuiteBegin( test )
{
  let context = this;
  context.provider = fileProvider;
  let path = context.provider.path;
  context.assetsOriginalPath = path.join( __dirname, '_asset' );
  context.suiteTempPath = context.provider.path.tempOpen( path.join( __dirname, '../..' ), 'HDF5Installation' );
}

//

function onSuiteEnd( test )
{
  let context = this;
  let path = context.provider.path;
  __.assert( __.strHas( context.suiteTempPath, 'HDF5Installation' ), context.suiteTempPath );
  path.tempClose( context.suiteTempPath );
}

//

function trivial( test )
{
  test.true( true );

  // let a = test.assetFor( test.name );
  // a.reflect();

  // test.case = 'simple use case to check if binding is installed properly'

  // var hdf5 = require( '../hdf5/include/Main.s' ).hdf5;
  // var Access = require( '../hdf5/include/Main.s' ).globals.Access;

  // var file = new hdf5.File( a.abs( './File.h5' ), Access.ACC_RDONLY );
  // var members = file.getMemberNames();
  // test.identical( members, [ 'group1' ] )
  // file.close();
}

// --
// declare
// --

const Proto =
{

  name : 'HDF5Installation',
  routineTimeOut : 1500000,
  silencing : 0,

  onSuiteBegin,
  onSuiteEnd,
  context :
  {
    provider : null,
    suiteTempPath : null,
    assetsOriginalPath : null,
    appJsPath : null,
  },

  tests :
  {
    trivial
  },

}

//

const Self = wTestSuite( Proto );
if( typeof module !== 'undefined' && !module.parent )
_global_.wTester.test( Self.name );

})();
