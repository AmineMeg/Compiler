Caml1999N028����            6flap/src/languages.mli����  b    �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������(Language��=flap/src/common/languages.mliAdp�Adx@������Р$name��D a g�D a k@����&string��D a n�D a t@@�@@@@���)ocaml.doc��������9 A language as a [name]. ��%C @ B�&C @ `@@@@@@@��(D a c@�@�����*ocaml.text��������, {1 Syntax} ��9F v x�:F v �@@@@@@���A�    �#ast��CI � ��DI � �@@@@A@���-ِ������	; A syntax is defined by the type of abstract syntax trees. ��QH � ��RH � �@@@@@@@��TI � �@@�@���Р.parse_filename��]Nms�^Nm�@��@����&string��gNm��hNm�@@�@@@����#ast��pNm��qNm�@@�@@@�@@@@���\�������	� [parse_filename f] turns the content of file [f] into an
      abstract syntax tree if that content is a syntactically valid
      input. ���K � ���M]l@@@@@@@���Nmo@�@���Р)extension���Q����Q��@����&string���Q����Q��@@�@@@@���+�������	@ Each language has its own extension for source code filenames. ���P����P��@@@@@@@���Q��@�@���Р1executable_format���Uy��Uy�@����$bool���Uy���Uy�@@�@@@@����N�������	| [executable_format] should true when programs of the language are directly
      executable when dumped on disk as files.  ���S����TFx@@@@@@@���Uy{@�@���Р,parse_string���Y��Y&@��@����&string���Y)��Y/@@�@@@����#ast���Y3��Y6@@�@@@�@@@@����}�������	s [parse_string c] is the same as [parse_filename] except that the
      source code is directly given as a string. ���W����X�@@@@@@@���Y@�@���Р)print_ast��]���]��@��@����#ast��]���]��@@�@@@����&string��]���]��@@�@@@�@@@@��� ��������	M [print ast] turns an abstract syntax tree into a human-readable
      form. ��$[8:�%\~�@@@@@@@��']��@�@��������������6 {2 Dynamic semantic} ��7_���8_��@@@@@@���A�    �'runtime��Ac07�Bc0>@@@@A@���+א������	[ A runtime environment contains all the information necessary
      to evaluate a program. ��Oa���Pb/@@@@@@@��Rc02@@�@���A�    �*observable��\g���]g��@@@@A@���F򐠠����	_ In the interactive loop, we will display some observable
      feedback about the evaluation. ��je@B�kf�@@@@@@@��mg��@@�@���Р/initial_runtime��vj���wj�@��@����$unit���j�
��j�@@�@@@����'runtime���j���j�@@�@@@�@@@@���u!�������	0 The evaluation starts with an initial runtime. ���i����i��@@@@@@@���j��@�@���Р(evaluate���o����o��@��@����'runtime���o����o��@@�@@@��@����#ast���o����o��@@�@@@�������'runtime���o����o��@@�@@@�����*observable���o����o��@@�@@@@�@@@�@@@�'@@@@����j�������	� [evaluate runtime p] executes the program [p] and
      produces a new runtime as well as an observation
      of this runtime. ���l��n��@@@@@@@���o��@�@���Р0print_observable���s;A��s;Q@��@����'runtime���s;T��s;[@@�@@@��@����*observable��s;_�s;i@@�@@@����&string��s;m�s;s@@�@@@�@@@�@@@@������������	V [print_observable o] returns a human-readable
      representation of an observable. ��q���r:@@@@@@@�� s;=@�@��������������5 {3 Static semantic} ��0uuw�1uu�@@@@@@���A�    �2typing_environment��:x���;x��@@@@A@���$А������	C A typing environment stores static information about the program. ��Hw���Iw��@@@@@@@��Kx��@@�@���Р:initial_typing_environment��T|lr�U|l�@��@����$unit��^|l��_|l�@@�@@@����2typing_environment��g|l��h|l�@@�@@@�@@@@���S��������	k The initial typing environment contains predefined static information,
      like the type for constants. ��wz���x{Fk@@@@@@@��z|ln@�@���Р)typecheck��� A]c�� A]l@��@����2typing_environment��� A]o�� A]�@@�@@@��@����#ast��� A]��� A]�@@�@@@����2typing_environment��� A]��� A]�@@�@@@�@@@�@@@@����:�������	� [typecheck env p] checks if the program [p] is well-formed
      and enriches the typing environment accordingly. If [p] is
      not well-formed an {!Error} is issued. ���~���� @-\@@@@@@@��� A]_@�@���Р8print_typing_environment��� E		�� E		)@��@����2typing_environment��� E		,�� E		>@@�@@@����&string��� E		B�� E		H@@�@@@�@@@@����i�������	c [print_typing_environment] returns a human-readable
      representation of a typing environment. ��� C���� D�	
@@@@@@@��� E		@�@@���Ad{�� G	J	M@@@���Add@�@���Р#get��� J	�	��� J	�	�@��@����&string��� J	�	��� J	�	�@@�@@@�����(Language�� J	�	�� J	�	�@@��
 J	�	�� J	�	�@��@@@�@@@@������������	C [get name] returns a language of flap called [name] if it exists. �� I	O	O� I	O	�@@@@@@@�� J	�	�@�@���Р2get_from_extension��' N
%
)�( N
%
;@��@����&string��1 N
%
>�2 N
%
D@@�@@@�����(Language��; N
%
P�< N
%
X@@��> N
%
H�? N
%
Y@��@@@�@@@@���+א������	` [get_from_extension ext] returns a language of flap whose extension
    is [ext] if it exists. ��O L	�	��P M

$@@@@@@@��R N
%
%@�@���Р(register��[ R
�
��\ R
�
�@��@�����(Language��f R
�
��g R
�
�@@��i R
�
��j R
�
�@��@@@����$unit��s R
�
��t R
�
�@@�@@@�@@@@���_�������	: [register l] inserts [l] in the set of flap's languages. ��� Q
\
\�� Q
\
�@@@@@@@��� R
�
�@�@@