// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:isolate';

unchangedFunction() => "unchanged";
var unchangedField = "unchanged".toString();

function() => "new value";
var uninitializedField = "new initializer".toString();
var fieldLiteralInitializer = "new initializer";
var initializedField = "new initializer".toString();
var neverReferencedField = "new initializer".toString();

// Not initially finalized.
class C {
  function() => "new value";
}

class NewClass {
  function() => "new value";
}

main2() {
  print(function());
  print(uninitializedField);
  print(initializedField);
  print(new C().function());
  print(new NewClass().function());
}
