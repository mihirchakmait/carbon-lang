// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{carbon-run-parser}
// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'VariableIntroducer', text: 'var'},
// CHECK:STDOUT:     {kind: 'DeclaredName', text: 'n'},
// CHECK:STDOUT:     {kind: 'Literal', text: 'i8'},
// CHECK:STDOUT:   {kind: 'PatternBinding', text: ':', subtree_size: 3},
// CHECK:STDOUT:       {kind: 'NameReference', text: 'n'},
// CHECK:STDOUT:     {kind: 'PrefixOperator', text: '-', subtree_size: 2},
// CHECK:STDOUT:   {kind: 'VariableInitializer', text: '=', subtree_size: 3},
// CHECK:STDOUT: {kind: 'VariableDeclaration', text: ';', subtree_size: 8},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

// CHECK:STDERR: {{.*}}/toolchain/parser/testdata/operators/recover_prefix_uneven_space_with_assign.carbon:[[@LINE+1]]:12: Whitespace is not allowed after this unary operator.
var n: i8 =- n;
