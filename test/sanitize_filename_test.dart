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
import 'package:test/test.dart';

void main() {
  group('Simple tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Should remove illegal characters.', () {
      const input = "~/.\u0000ssh/authorized_keys";
      final output = sanitizeFilename(input);
      const expected = "~.sshauthorized_keys";

      expect(output, expected);
    });

    test('Should replace illegal characters with underscores.', () {
      const input = "~/.\u0000ssh/authorized_keys";
      final output = sanitizeFilename(input, replacement: "-");
      const expected = "~-.-ssh-authorized_keys";

      expect(output, expected);
    });
  });
}
