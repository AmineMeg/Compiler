Caml1999N029����            .src/memory.mli����  +  !  )  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	% This module defines a memory model. ��5src/common/memory.mliA\\�A\ F@@@@@@���A�    �!t��D m u�D m v@����!a��D m r�D m t@@@�BA@@@A@���)ocaml.doc��������? A memory is data structure... ��#C H H�$C H l@@@@@@@��&D m m@@�@���A�    �(location��0G � ��1G � �@@@@A@���ΐ������8 that maps locations... ��>F x x�?F x �@@@@@@@��AG � �@@�@���A�    �%block��KJ � ��LJ � �@����!a��SJ � ��TJ � �@@@�BA@@@A@���@򐠠����	! to blocks of data of type ['a]. ��bI � ��cI � �@@@@@@@��eJ � �@@�@���Р&create��nM$(�oM$.@��@����#int��xM$1�yM$4@@�@@@����!t���M$;��M$<@���!a���M$8��M$:@@@@�	@@@�
@@@@���v(�������	C [create size] produces a fresh memory of [size] potential blocks. ���L � ���L �#@@@@@@@���M$$@�@���Р(allocate���Q����Q��@��@����!t���Q����Q��@���!a���Q����Q��@@@@�	@@@��@�����$Mint!t���Q����Q��@@�@@@��@��!a���Q����Q��@@@����(location���Q����Q��@@�@@@�@@@�@@@�$@@@@����u�������	� [allocate mem size init] produces a location that points to a fresh block
    of size cells. These cells are initialized with [init]. ���O>>��P��@@@@@@@���Q��@�@������+OutOfMemory���UYc��UYn@��@@���UYY@������������	W The following exception is raised if no new block can be allocated in the
    memory. ��S���TJX@@@@@@@�@�@���Р+dereference��X���X��@��@����!t��X���X��@���!a��X��� X��@@@@�	@@@��@����(location��*X���+X��@@�@@@����%block��3X���4X��@���!a��:X���;X��@@@@�	@@@�
@@@� @@@@���)ې������	E [dereference mem location] returns the block pointed by [location]. ��KWpp�LWp�@@@@@@@��NX��@�@���Р$size��W["�X[&@��@����%block��a[,�b[1@���!a��h[)�i[+@@@@�	@@@�����$Mint!t��s[5�t[;@@�@@@�@@@@���a�������	- [size block] returns the length of a block. ���Z����Z�@@@@@@@���[@�@���Р$read���^����^��@��@����%block���^����^��@���!a���^����^��@@@@�	@@@��@�����$Mint!t���^����^��@@�@@@��!a���^����^��@@@�
@@@�@@@@����T�������	B [read block i] returns the content of the i-th cell of the block ���]==��]=�@@@@@@@���^��@�@���Р%write���a����a�@��@����%block���a�	��a�@���!a���a���a�@@@@�	@@@��@�����$Mint!t���a���a�@@�@@@��@��!a���a���a�@@@����$unit���a�"� a�&@@�@@@�@@@�@@@�$@@@@������������	J [write block i x] sets the content of the i-th cell of the block to [x]. ��`���`��@@@@@@@��a��@�@���Р.array_of_block��dos�do�@��@����%block��'do��(do�@���!a��.do��/do�@@@@�	@@@����%array��7do��8do�@���!a��>do��?do�@@@@�	@@@�
@@@@���,ސ������	A [array_of_block b] returns the cells of [b] packed in an array. ��Nc((�Oc(n@@@@@@@��Qdoo@�@���Р.print_location��Zg���[g��@��@����(location��dg���eg�@@�@@@����&string��mg��ng�@@�@@@�@@@@���[�������	D [print_location l] returns a human-readable representation of [l]. ��}f���~f��@@@@@@@���g��@�@@