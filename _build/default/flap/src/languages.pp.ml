Caml1999M028����            5flap/src/languages.ml����  "    C  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������(Language��<flap/src/common/languages.mlAco�Acw@������Р$name��D ` f�D ` j@����&string��D ` m�D ` s@@�@@@@���)ocaml.doc��������9 A language as a [name]. ��%C A�&C _@@@@@@@��(D ` b@�@�����*ocaml.text��������, {1 Syntax} ��9F u w�:F u �@@@@@@���A�    �#ast��CI � ��DI � �@@@@A@���-ِ������	; A syntax is defined by the type of abstract syntax trees. ��QH � ��RH � �@@@@@@@��TI � �@@�@���Р.parse_filename��]Nlr�^Nl�@��@����&string��gNl��hNl�@@�@@@����#ast��pNl��qNl�@@�@@@�@@@@���\�������	� [parse_filename f] turns the content of file [f] into an
      abstract syntax tree if that content is a syntactically valid
      input. ���K � ���M\k@@@@@@@���Nln@�@���Р)extension���Q����Q��@����&string���Q����Q��@@�@@@@���+�������	@ Each language has its own extension for source code filenames. ���P����P��@@@@@@@���Q��@�@���Р1executable_format���Ux~��Ux�@����$bool���Ux���Ux�@@�@@@@����N�������	| [executable_format] should true when programs of the language are directly
      executable when dumped on disk as files.  ���S����TEw@@@@@@@���Uxz@�@���Р,parse_string���Y��Y%@��@����&string���Y(��Y.@@�@@@����#ast���Y2��Y5@@�@@@�@@@@����}�������	s [parse_string c] is the same as [parse_filename] except that the
      source code is directly given as a string. ���W����X�@@@@@@@���Y@�@���Р)print_ast��]���]��@��@����#ast��]���]��@@�@@@����&string��]���]��@@�@@@�@@@@��� ��������	M [print ast] turns an abstract syntax tree into a human-readable
      form. ��$[79�%\}�@@@@@@@��']��@�@��������������. {2 Semantic} ��7_���8_��@@@@@@���A�    �'runtime��Ac'.�Bc'5@@@@A@���+א������	[ A runtime environment contains all the information necessary
      to evaluate a program. ��Oa���Pb&@@@@@@@��Rc')@@�@���A�    �*observable��\g���]g��@@@@A@���F򐠠����	_ In the interactive loop, we will display some observable
      feedback about the evaluation. ��je79�kfv�@@@@@@@��mg��@@�@���Р/initial_runtime��vj���wj��@��@����$unit���j���j�@@�@@@����'runtime���j�	��j�@@�@@@�@@@@���u!�������	0 The evaluation starts with an initial runtime. ���i����i��@@@@@@@���j��@�@���Р(evaluate���o����o��@��@����'runtime���o����o��@@�@@@��@����#ast���o����o��@@�@@@�������'runtime���o����o��@@�@@@�����*observable���o����o��@@�@@@@�@@@�@@@�'@@@@����j�������	� [evaluate runtime p] executes the program [p] and
      produces a new runtime as well as an observation
      of this runtime. ���l��n��@@@@@@@���o��@�@���Р0print_observable���s28��s2H@��@����'runtime���s2K��s2R@@�@@@��@����*observable��s2V�s2`@@�@@@����&string��s2d�s2j@@�@@@�@@@�@@@@������������	V [print_observable o] returns a human-readable
      representation of an observable. ��q���r1@@@@@@@�� s24@�@��������������5 {3 Static semantic} ��0uln�1ul�@@@@@@���A�    �2typing_environment��:y���;y�@@@@A@���$А������	b During type checking, static information (aka types)
      are stored in the typing environment. ��Hw���Ix��@@@@@@@��Ky��@@�@���Р:initial_typing_environment��T|<B�U|<\@��@����$unit��^|<_�_|<c@@�@@@����2typing_environment��g|<g�h|<y@@�@@@�@@@@���S��������	% A typing environment to start with. ��w{�x{;@@@@@@@��z|<>@�@���Р)typecheck��� A+1�� A+:@��@����2typing_environment��� A+=�� A+O@@�@@@��@����#ast��� A+S�� A+V@@�@@@����2typing_environment��� A+Z�� A+l@@�@@@�@@@�@@@@����:�������	� [typecheck tenv p] checks if [p] is a well-typed program
      and returns an extension of the typing environment [tenv]
      with the values defined in the program. ���~{}�� @�*@@@@@@@��� A+-@�@���Р8print_typing_environment��� E���� E��@��@����2typing_environment��� E���� E�	@@�@@@����&string��� E�	�� E�	@@�@@@�@@@@����i�������	Z [print_typing_environment tenv] returns a human-readable
      representation of [tenv]. ��� Cnp�� D��@@@@@@@��� E��@�@@���Acz�� G		@@@���Acc@�@���@�������)languages��� K	i	m�� K	i	v@�@@@��@�����'Hashtbl!t�� K	i	�� K	i	�@�����&string�� K	i	z� K	i	�@@�@@@������(Language�� K	i	�� K	i	�@@�� K	i	�� K	i	�@��@@@@��! K	i	y@@@�A@@�,A@@�  �������'Hashtbl&create��0 L	�	��1 L	�	�@�@@@��@���"13@��: L	�	��; L	�	�@@@@�@@@�����@?>�����;:@7@@������65@2�/@@@.@@�WA@@���7㐠�����	O We store all the language implementations in the following
    hashing table. ��[ I		�\ J	S	h@@@@@@@��^ K	i	i$@@�%@���@�������*extensions��l N	�	��m N	�	�@�@@@��@�����'Hashtbl!t��y N	�	��z N	�	�@�����&string��� N	�	��� N	�	�@@�@@@������(Language��� N	�	��� N	�	�@@��� N	�	��� N	�	�@��@@@@��� N	�	�@@@�A@@�,A@@�  �������'Hashtbl&create��� O	�	��� O	�	�@�@@@��@���"13@��� O	�
 �� O	�
@@@@�@@@�����@?>�����;:@7@@������65@2�/@@@.@@�WA@@@��� N	�	�@@�@���@�����#get��� Q

�� Q

@�@@@��@@�����!l��� Q

�� Q

@�@@@����&string��� Q

�� Q

@@�@@@��� Q

�� Q

@@@�  ���������'Hashtbl$find��� S
5
9�� S
5
E@�@@@��@����)languages�� S
5
F� S
5
O@�@@@��@����!l�� S
5
P� S
5
Q@�@@@@�@@@������)Not_found�� T
R
Y� T
R
b@@�@@@@�������%Error,global_error��( U
f
j�) U
f
|@�@@@��@���.initialization��2 U
f
~�3 U
f
�@@��5 U
f
}�6 U
f
�@@@��@���:There is no such language.��> U
f
��? U
f
�@@��A U
f
��B U
f
�@@@@�@@@@��E R
/
1@@@�����(Language��M Q

#�N Q

+@@��P Q

�Q Q

,@��@@@��U Q

A@@�nA@@@��X Q

@@�@���@�����2get_from_extension��d W
�
��e W
�
�@�@@@��@@�����!l��p W
�
��q W
�
�@�@@@����&string��y W
�
��z W
�
�@@�@@@��} W
�
��~ W
�
�@@@�  ���������'Hashtbl$find��� Y
�
��� Y
�
�@�@@@��@����*extensions��� Y
�
��� Y
�@�@@@��@����!l��� Y
��� Y
�	@�@@@@�@@@������)Not_found��� Z
�� Z
@@�@@@@�������%Error,global_error��� ["�� [4@�@@@��@���.initialization��� [6�� [D@@��� [5�� [E@@@��@���	 This extension is not supported.��� [G�� [g@@��� [F�� [h@@@@�@@@@��� X
�
�@@@�����(Language��� W
�
��� W
�
�@@��� W
�
��� W
�
�@��@@@��� W
�
�A@@�nA@@@��� W
�
�@@�@���@�����(register��� ]jn�� ]jv@�@@@��@@������!L�� ]j� ]j�@�� ]jw�	 ]j�@@@�����(Language�� ]j�� ]j�@@�@@@�@@@�  �������'Hashtbl#add��! ^���" ^��@�@@@��@����)languages��, ^���- ^��@�@@@��@�����!L$name��9 ^���: ^��@�@@@��@�   ����!L��F ^���G ^��@�@@��J ^���K ^��@@@@�,@@@�������'Hashtbl#add��W _���X _��@�@@@��@����*extensions��b _���c _��@�@@@��@�����!L)extension��o _���p _��@�@@@��@�   ����!L��| _���} _��@�@@��� _���� _��@@@@�,@@@�c@@@�}A@@@��� ]jj@@�@@