Caml1999N029����            0src/position.mli����  *t  �  �  �����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	, Extension of standard library's positions. ��:src/utilities/position.mliAaa�Aa R@@@@@@�������������? {2 Extended lexing positions} ��C T T�C T x@@@@@@���A�    �!t��F � ��F � �@@@@A@���)ocaml.doc��������	< Abstract type for pairs of positions in the lexing stream. ��*E z z�+E z �@@@@@@@��-F � �@@�@���A�    �(position��7G � ��8G � �@@@@A�����!t��@G � ��AG � �@@�@@@@��DG � �@@�@���A�    �'located��NJ�OJ@����!a��VJ	�WJ@@@�BA@@��Р%value��_L"�`L'@@��!a��eL-�fL/@@@�	�hL0@@�Р(position��nM17�oM1?@@����!t��vM1B�wM1C@@�@@@��zM1D@@@A@���^�������	( Decoration of a value with a position. ���I � ���I �@@@@@@���(deriving���NEN��NEV@��������$sexp���NEW��NE[@�@@@@@���NEK��NE\@@���J@@�@�����������-ocaml.warning��&_none_A@ �A�������#-32@@@@@�A���Р/sexp_of_locatedt��@��@��sr@@������1Ppx_sexp_conv_lib$Sexp!t�{zA@@@@@��@�����������@@@�@@���������A@@@@@�@@@@AA���Р/located_of_sexp���@��@������$#"���A@@@����@@@@��@������/.-���A@@@�����������@@@�@@@@�@@@@dd@J@J���)ocaml.docY�������'@inlinea@a@@@a@a���+merlin.hidee�@�@[���Р%value��R���R��@��@����'located��&R���'R��@���!a��-R���.R��@@@@�	@@@��!a��4R���5R��@@@�
@@@@���Ӑ������	O [value dv] returns the raw value that underlies the
    decorated value [dv]. ��CP^^�DQ��@@@@@@@��FR��@�@���Р(position��OV'+�PV'3@��@����'located��YV'8�ZV'?@���!a��`V'5�aV'7@@@@�	@@@����!t��iV'C�jV'D@@�@@@�@@@@���P	�������	Q [position dv] returns the position that decorates the
    decorated value [dv]. ��yT���zU
&@@@@@@@��|V''@�@���Р(destruct���Z����Z��@��@����'located���Z����Z��@���!a���Z����Z��@@@@�	@@@�����!a���Z����Z��@@@�����!t���Z����Z��@@�@@@@�@@@�@@@@����J�������	W [destruct dv] returns the couple of position and value
    of a decorated value [dv]. ���XFF��Y��@@@@@@@���Z��@�@���Р'located���]���]�@��@��@��!a���]���]�@@@��!b���]���]�@@@�	@@@��@����'located���]���]�#@���!a���]���]�@@@@�	@@@��!b���]�'��]�)@@@�
@@@���]�@@@@������������	0 [located f x] applies [f] to the value of [x]. �� \���\��@@@@@@@��]��@�@���Р(with_pos��`dh�`dp@��@����!t��`ds�`dt@@�@@@��@��!a��`dx� `dz@@@����'located��'`d��(`d�@���!a��.`d~�/`d�@@@@�	@@@�
@@@�@@@@���ϐ������	3 [with_pos p v] decorates [v] with a position [p]. ��?_++�@_+c@@@@@@@��B`dd@�@���Р)with_cpos��Kc���Lc��@��@�����&Lexing&lexbuf��Wc���Xc��@@�@@@��@��!a��`c���ac��@@@����'located��hc���ic��@���!a��oc���pc��@@@@�	@@@�
@@@�@@@@���W�������	< [with_cpos p v] decorates [v] with a lexical position [p]. ���b����b��@@@@@@@���c��@�@���Р)with_poss���fMQ��fMZ@��@�����&Lexing(position���fM]��fMl@@�@@@��@�����&Lexing(position���fMp��fM@@�@@@��@��!a���fM���fM�@@@����'located���fM���fM�@���!a���fM���fM�@@@@�	@@@�
@@@�@@@�+@@@@����_�������	I [with_poss start stop v] decorates [v] with a position [(start, stop)]. ���e����e�L@@@@@@@���fMM@�@���Р+unknown_pos���i����i��@��@��!a���i����i��@@@����'located���i����i��@���!a���i����i��@@@@�	@@@�
@@@@������������	9 [unknown_pos x] decorates [v] with an unknown position. ��h���h��@@@@@@@��i��@�@���Р%dummy��mUY�mU^@����!t��mU`�mUa@@�@@@@������������	W This value is used when an object does not come from a particular
    input location. ��%k���&l>T@@@@@@@��(mUU@�@���Р#map��1p���2p��@��@��@��!a��;p���<p��@@@��!b��Ap���Bp��@@@�	@@@��@����'located��Lp���Mp��@���!a��Sp���Tp��@@@@�	@@@����'located��\p���]p��@���!b��cp���dp��@@@@�	@@@�
@@@��hp��@@@@���L�������	5 [map f v] extends the decoration from [v] to [f v]. ��uocc�voc�@@@@@@@��xp��@�@���Р$iter���s��s@��@��@��!a���s��s@@@����$unit���s��s@@�@@@�@@@��@����'located���s%��s,@���!a���s"��s$@@@@�	@@@����$unit���s0��s4@@�@@@�@@@���s@@@@����Q�������	3 [iter f dv] applies [f] to the value inside [dv]. ���r����r�@@@@@@@���s@�@���Р$mapd���w����w��@��@��@��!a���w����w��@@@�����"b1���w����w��@@@���"b2���w����w��@@@@�
@@@�@@@��@����'located���w����w��@���!a���w����w��@@@@�	@@@�������'located��w���w��@���"b1��w���w��@@@@�	@@@�����'located��w���w��@���"b2��w���w��@@@@�	@@@@�
@@@�)@@@��$w��@@@@�����������	S [mapd f v] extends the decoration from [v] to both members of the pair
    [f v]. ��1u66�2v��@@@@@@@��4w��@�@�����EԐ������/ {2 Accessors} ��Dy���Ey��@@@@@@���Р&column��M}_c�N}_i@��@�����&Lexing(position��Y}_l�Z}_{@@�@@@����#int��b}_�c}_�@@�@@@�@@@@���I�������	l [column p] returns the number of characters from the
    beginning of the line of the Lexing.position [p]. ��r{���s|&^@@@@@@@��u}__@�@���Р$line��~ @��� @��@��@�����&Lexing(position��� @���� @��@@�@@@����#int��� @���� @��@@�@@@�@@@@���z3�������	C [column p] returns the line number of to the Lexing.position [p]. ���������@@@@@@@��� @��@�@���Р*characters��� Esw�� Es�@��@�����&Lexing(position��� Es��� Es�@@�@@@��@�����&Lexing(position��� Es��� Es�@@�@@@�������#int��� Es��� Es�@@�@@@�����#int��� Es��� Es�@@�@@@@�@@@�@@@�)@@@@������������	} [characters p1 p2] returns the character interval
    between [p1] and [p2] assuming they are located in the same
    line. ��� B���� Dfr@@@@@@@��� Ess@�@���Р1start_of_position��� H���� H�	@��@����!t�� H�	� H�	@@�@@@�����&Lexing(position�� H�	� H�	&@@�@@@�@@@@������������	@ [start_of_position p] returns the beginning of a position [p]. ��! G���" G��@@@@@@@��$ H��@�@���Р/end_of_position��- K	f	j�. K	f	y@��@����!t��7 K	f	{�8 K	f	|@@�@@@�����&Lexing(position��B K	f	��C K	f	�@@�@@@�@@@@���)␠�����	8 [end_of_position p] returns the end of a position [p]. ��R J	(	(�S J	(	e@@@@@@@��U K	f	f@�@���Р4filename_of_position��^ N	�	��_ N	�	�@��@����!t��h N	�	��i N	�	�@@�@@@����&string��q N	�	��r N	�	�@@�@@@�@@@@���X�������	B [filename_of_position p] returns the filename of a position [p]. ��� M	�	��� M	�	�@@@@@@@��� N	�	�@�@������$�������7 {2 Position handling} ��� P
 
 �� P
 
@@@@@@���Р$join��� T
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
�@@�@@@�@@@�@@@@����\�������	_ [join p1 p2] returns a position that starts where [p1]
    starts and stops where [p2] stops. ��� R

�� S
Y
�@@@@@@@��� T
�
�@�@���Р(lex_join��� X
�
��� X
�
�@��@�����&Lexing(position��� X
� �� X
�@@�@@@��@�����&Lexing(position��� X
��� X
�"@@�@@@����!t��� X
�&�� X
�'@@�@@@�@@@�@@@@������������	P [lex_join l1 l2] returns a position that starts at [l1] and stops
    at [l2]. �� V
�
�� W
�
�@@@@@@@�� X
�
�@�@���Р1string_of_lex_pos�� \��� \��@��@�����&Lexing(position��# \���$ \��@@�@@@����&string��, \���- \��@@�@@@�@@@@���̐������	X [string_of_lex_pos p] returns a string representation for
    the lexing position [p]. ��< Z))�= [g�@@@@@@@��? \��@�@���Р-string_of_pos��H `!�I `.@��@����!t��R `1�S `2@@�@@@����&string��[ `6�\ `<@@�@@@�@@@@���B��������	] [string_of_pos p] returns the standard (Emacs-like) representation
    of the position [p]. ��k ^���l _@@@@@@@��n `@�@���Р,pos_or_undef��w d���x d��@��@����&option��� d���� d��@�����!t��� d���� d��@@�@@@@�@@@����!t��� d���� d��@@�@@@�@@@@���{4�������	t [pos_or_undef po] is the identity function except if po = None,
    in that case, it returns [undefined_position]. ��� b>>�� c��@@@@@@@��� d��@�@������G�������	( {2 Interaction with the lexer runtime} ��� f���� f�@@@@@@���Р$cpos��� iIM�� iIQ@��@�����&Lexing&lexbuf��� iIT�� iIa@@�@@@����!t��� iIe�� iIf@@�@@@�@@@@����u�������	: [cpos lexbuf] returns the current position of the lexer. ��� h		�� h	H@@@@@@@��� iII@�@���Р.string_of_cpos��� m���� m��@��@�����&Lexing&lexbuf��� m���� m��@@�@@@����&string�� m��� m��@@�@@@�@@@@������������	Y [string_of_cpos p] returns a string representation of
    the lexer's current position. �� khh� l��@@@@@@@�� m��@�@@