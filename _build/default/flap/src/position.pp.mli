Caml1999N028����            5flap/src/position.mli����  *w  �  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	, Extension of standard library's positions. ��?flap/src/utilities/position.mliAff�Af W@@@@@@�������������? {2 Extended lexing positions} ��C Y Y�C Y }@@@@@@���A�    �!t��F � ��F � �@@@@A@���)ocaml.doc��������	< Abstract type for pairs of positions in the lexing stream. ��*E  �+E  �@@@@@@@��-F � �@@�@���A�    �(position��7G � ��8G � �@@@@A�����!t��@G � ��AG � �@@�@@@@��DG � �@@�@���A�    �'located��NJ	�OJ	@����!a��VJ	�WJ	@@@B@@��Р%value��^L!'�_L!,@@��!a��dL!2�eL!4@@@�	�gL!5@@�Р(position��mM6<�nM6D@@����!t��uM6G�vM6H@@�@@@��yM6I@@@A@���]�������	( Decoration of a value with a position. ���I � ���I �@@@@@@���(deriving���NJS��NJ[@��������$sexp���NJ\��NJ`@�@@@@@���NJP��NJa@@���J		@@�@�����������-ocaml.warning��&_none_A@ �A�������#-32@@@@@�A���Р/sexp_of_locateds��@��@��rq@@������1Ppx_sexp_conv_lib$Sexp!t�zyA@@@@@��@�����������@@@�@@���������A@@@@@�@@@@AA���Р/located_of_sexp���@��@������$#"���A@@@����@@@@��@������/.-���A@@@�����������@@@�@@@@�@@@@dd@J@J���)ocaml.docY�������'@inlinea@a@@@a@a���+merlin.hidee�@�@[���Р%value��R���R��@��@����'located��%R���&R��@���!a��,R���-R��@@@@�	@@@��!a��3R���4R��@@@�
@@@@���Ґ������	O [value dv] returns the raw value that underlies the
    decorated value [dv]. ��BPcc�CQ��@@@@@@@��ER��@�@���Р(position��NV,0�OV,8@��@����'located��XV,=�YV,D@���!a��_V,:�`V,<@@@@�	@@@����!t��hV,H�iV,I@@�@@@�@@@@���O�������	Q [position dv] returns the position that decorates the
    decorated value [dv]. ��xT���yU+@@@@@@@��{V,,@�@���Р(destruct���Z����Z��@��@����'located���Z����Z��@���!a���Z����Z��@@@@�	@@@�����!a���Z����Z��@@@�����!t���Z����Z��@@�@@@@�@@@�@@@@����I�������	W [destruct dv] returns the couple of position and value
    of a decorated value [dv]. ���XKK��Y��@@@@@@@���Z��@�@���Р'located���]��]@��@��@��!a���]��]@@@��!b���]��]@@@�	@@@��@����'located���]!��](@���!a���]��] @@@@�	@@@��!b���],��].@@@�
@@@���]@@@@������������	0 [located f x] applies [f] to the value of [x]. ���\��� \�@@@@@@@��]@�@���Р(with_pos��`im�`iu@��@����!t��`ix�`iy@@�@@@��@��!a��`i}�`i@@@����'located��&`i��'`i�@���!a��-`i��.`i�@@@@�	@@@�
@@@�@@@@���ΐ������	3 [with_pos p v] decorates [v] with a position [p]. ��>_00�?_0h@@@@@@@��A`ii@�@���Р)with_cpos��Jc���Kc��@��@�����&Lexing&lexbuf��Vc���Wc��@@�@@@��@��!a��_c���`c��@@@����'located��gc���hc�@���!a��nc���oc��@@@@�	@@@�
@@@�@@@@���V�������	< [with_cpos p v] decorates [v] with a lexical position [p]. ��b����b��@@@@@@@���c��@�@���Р)with_poss���fRV��fR_@��@�����&Lexing(position���fRb��fRq@@�@@@��@�����&Lexing(position���fRu��fR�@@�@@@��@��!a���fR���fR�@@@����'located���fR���fR�@���!a���fR���fR�@@@@�	@@@�
@@@�@@@�+@@@@����^�������	I [with_poss start stop v] decorates [v] with a position [(start, stop)]. ���e��eQ@@@@@@@���fRR@�@���Р+unknown_pos���i����i��@��@��!a���i����i��@@@����'located���i����i��@���!a���i����i��@@@@�	@@@�
@@@@������������	9 [unknown_pos x] decorates [v] with an unknown position. ��h���h��@@@@@@@��i��@�@���Р%dummy��mZ^�mZc@����!t��mZe�mZf@@�@@@@������������	W This value is used when an object does not come from a particular
    input location. ��$k���%lCY@@@@@@@��'mZZ@�@���Р#map��0p���1p��@��@��@��!a��:p���;p��@@@��!b��@p���Ap��@@@�	@@@��@����'located��Kp���Lp��@���!a��Rp���Sp��@@@@�	@@@����'located��[p���\p��@���!b��bp���cp��@@@@�	@@@�
@@@��gp��@@@@���K�������	5 [map f v] extends the decoration from [v] to [f v]. ��tohh�uoh�@@@@@@@��wp��@�@���Р$iter���s��s@��@��@��!a���s��s@@@����$unit���s��s"@@�@@@�@@@��@����'located���s*��s1@���!a���s'��s)@@@@�	@@@����$unit���s5��s9@@�@@@�@@@���s@@@@����P�������	3 [iter f dv] applies [f] to the value inside [dv]. ���r����r�@@@@@@@���s@�@���Р$mapd���w����w��@��@��@��!a���w����w��@@@�����"b1���w����w��@@@���"b2���w����w��@@@@�
@@@�@@@��@����'located���w����w��@���!a���w����w��@@@@�	@@@�������'located��w���w��@���"b1��w���w��@@@@�	@@@�����'located��w���w��@���"b2��w���w��@@@@�	@@@@�
@@@�)@@@��#w��@@@@�����������	S [mapd f v] extends the decoration from [v] to both members of the pair
    [f v]. ��0u;;�1v��@@@@@@@��3w��@�@�����DӐ������/ {2 Accessors} ��Cy���Dy��@@@@@@���Р&column��L}dh�M}dn@��@�����&Lexing(position��X}dq�Y}d�@@�@@@����#int��a}d��b}d�@@�@@@�@@@@���H�������	l [column p] returns the number of characters from the
    beginning of the line of the Lexing.position [p]. ��q{���r|+c@@@@@@@��t}dd@�@���Р$line��} @���~ @��@��@�����&Lexing(position��� @���� @��@@�@@@����#int��� @���� @��@@�@@@�@@@@���y2�������	C [column p] returns the line number of to the Lexing.position [p]. ���������@@@@@@@��� @��@�@���Р*characters��� Ex|�� Ex�@��@�����&Lexing(position��� Ex��� Ex�@@�@@@��@�����&Lexing(position��� Ex��� Ex�@@�@@@�������#int��� Ex��� Ex�@@�@@@�����#int��� Ex��� Ex�@@�@@@@�@@@�@@@�)@@@@�����������	} [characters p1 p2] returns the character interval
    between [p1] and [p2] assuming they are located in the same
    line. ��� B���� Dkw@@@@@@@��� Exx@�@���Р1start_of_position��� H	 	�� H	 	@��@����!t�� H	 	� H	 	@@�@@@�����&Lexing(position�� H	 	� H	 	+@@�@@@�@@@@������������	@ [start_of_position p] returns the beginning of a position [p]. ��  G���! G��@@@@@@@��# H	 	 @�@���Р/end_of_position��, K	k	o�- K	k	~@��@����!t��6 K	k	��7 K	k	�@@�@@@�����&Lexing(position��A K	k	��B K	k	�@@�@@@�@@@@���(ᐠ�����	8 [end_of_position p] returns the end of a position [p]. ��Q J	-	-�R J	-	j@@@@@@@��T K	k	k@�@���Р4filename_of_position��] N	�	��^ N	�	�@��@����!t��g N	�	��h N	�	�@@�@@@����&string��p N	�	��q N	�
@@�@@@�@@@@���W�������	B [filename_of_position p] returns the filename of a position [p]. ��� M	�	��� M	�	�@@@@@@@��� N	�	�@�@������#�������7 {2 Position handling} ��� P

�� P

!@@@@@@���Р$join��� T
�
��� T
�
�@��@����!t��� T
�
��� T
�
�@@�@@@��@����!t��� T
�
��� T
�
�@@�@@@����!t��� T
�
��� T
�
�@@�@@@�@@@�@@@@����[�������	_ [join p1 p2] returns a position that starts where [p1]
    starts and stops where [p2] stops. ��� R
#
#�� S
^
�@@@@@@@��� T
�
�@�@���Р(lex_join��� X
�
��� X
�@��@�����&Lexing(position��� X
��� X
�@@�@@@��@�����&Lexing(position��� X
��� X
�'@@�@@@����!t��� X
�+�� X
�,@@�@@@�@@@�@@@@������������	P [lex_join l1 l2] returns a position that starts at [l1] and stops
    at [l2]. ��
 V
�
�� W
�
�@@@@@@@�� X
�
�@�@���Р1string_of_lex_pos�� \��� \��@��@�����&Lexing(position��" \���# \��@@�@@@����&string��+ \���, \��@@�@@@�@@@@���ː������	X [string_of_lex_pos p] returns a string representation for
    the lexing position [p]. ��; Z..�< [l�@@@@@@@��> \��@�@���Р-string_of_pos��G `"&�H `"3@��@����!t��Q `"6�R `"7@@�@@@����&string��Z `";�[ `"A@@�@@@�@@@@���A��������	] [string_of_pos p] returns the standard (Emacs-like) representation
    of the position [p]. ��j ^���k _!@@@@@@@��m `""@�@���Р,pos_or_undef��v d���w d��@��@����&option��� d���� d��@�����!t��� d���� d��@@�@@@@�@@@����!t��� d���� d��@@�@@@�@@@@���z3�������	t [pos_or_undef po] is the identity function except if po = None,
    in that case, it returns [undefined_position]. ��� bCC�� c��@@@@@@@��� d��@�@������F�������	( {2 Interaction with the lexer runtime} ��� f���� f�@@@@@@���Р$cpos��� iNR�� iNV@��@�����&Lexing&lexbuf��� iNY�� iNf@@�@@@����!t��� iNj�� iNk@@�@@@�@@@@����t�������	: [cpos lexbuf] returns the current position of the lexer. ��� h�� hM@@@@@@@��� iNN@�@���Р.string_of_cpos��� m���� m��@��@�����&Lexing&lexbuf��� m���� m��@@�@@@����&string�� m��� m��@@�@@@�@@@@������������	Y [string_of_cpos p] returns a string representation of
    the lexer's current position. �� kmm� l��@@@@@@@�� m��@�@@