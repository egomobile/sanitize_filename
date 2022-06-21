// This file is part of the sanitize_filename distribution.
// Copyright (c) Next.e.GO Mobile SE, Aachen, Germany (https://e-go-mobile.com/)
//
// sanitize_filename is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as
// published by the Free Software Foundation, version 3.
//
// sanitize_filename is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.

import 'package:sanitize_filename/sanitize_filename.dart';

void main() {
  const unsafeUserInput = "~/.\u0000ssh/authorized_keys";

  final safeUserInput1 = sanitizeFilename(unsafeUserInput);
  final safeUserInput2 = sanitizeFilename(unsafeUserInput, replacement: '-');

  print("safeUserInput1: $safeUserInput1");
  print("safeUserInput2: $safeUserInput2");
}
