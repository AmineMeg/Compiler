Caml1999M030����   #      
   	!src/retrolixRegisterAllocation.ml����  TL  �  ;O  8������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������
  �

   The register allocation translates a Retrolix program into an
   equivalent Retrolix program that uses hardware registers as much as
   possible to hold intermediate results.

   Register allocation is done in two steps:

   - a static analysis called "Liveness Analysis of Variables" is
   performed to compute a graph. This graph overapproximates the interference
   relation of program variables, i.e. the intersection between the
   live ranges of variables. The nodes of the graph are the program
   variables and, in this graph, a node for 'x' and a node 'y' are
   connected iff 'x' and 'y' are in interference.

   - a graph coloring algorithm is executed on the interference graph:
   if two variables live at the same time, then their values cannot
   be carried by the same register ; thus, it suffices to use a different
   color for their nodes. Graph coloring is NP-complete. Yet, we will
   use a simple recursive algorithm that provides good results in
   practice.

��	*src/retrolix/retrolixRegisterAllocation.mlAqq�W@@@@@@��������+RetrolixAST��Y�Y$@�@@A��Y@@�@��������-RetrolixUtils��Z%*�Z%7@�@@A��!Z%%@@�@��������9RetrolixInterferenceGraph��-[8=�.[8V@�@@A��1[88@@�@�����Bѐ������	q

    Register allocation is an optimization.

    Hence, we register this translation as such in the compiler.

��A]XX�Bc��@@@@@@���@�����)activated��Me���Ne��@�@@@������#ref��Xe���Ye��@�@@@��@����%false��ce���de��@@�@@@@�@@@@��he��@@�@������&Source��rg���sg��@����(Retrolix��zg���{g�@�@@@��~g��@�@���@�����)shortname���i	��i@�@@@���(regalloc���i��i@@���i��i@@@@���i@@�@���@�����(longname���k!%��k!-@�@@@���3register allocation���k!1��k!D@@���k!0��k!E@@@@���k!!@@�@������R�������	+

   Coloring, definitions and operators.

���mGG��quw@@@@@@���A�    �,colorization���sy~��sy�@@@��Р%Color���sy���sy�@������(register���sy���sy�@@�@@@@@�@@�Р'OnStack���sy���sy�@�@@���sy�@@�Р)Undecided���sy���sy�@�@@���sy�@@@A@@���syy@@�@���A�    �(coloring��u���u��@@@@A������)LValueMap!t��u���u��@�����,colorization��u���u��@@�@@@@�@@@@��u��@@�@���@�����1color_of_register��&w���'w��@�@@@��@@���!r��0w���1w��@�@@@���������-RetrolixUtils(register��?x��@x�@�@@@��@����!r��Jx��Kx�@�@@@@�@@@����(Register����!r��Yx�*�Zx�+@�@@@��]x� @@@@����!r��dx�/�ex�0@�@@@���@��kx�3�lx�4@@@@�  ������tx�?�ux�D@@�@@@��xx�8@@@@��zx��@@@�LA@@@��}w��	@@�
@���@�����&colors���zFJ��zFP@�@@@�������$List#map���{SU��{S]@�@@@��@����1color_of_register���{S^��{So@�@@@��@�����3X86_64_Architecture3allocable_registers���{Sp��{S�@�@@@@�@@@@���zFF@@�@���@�����2is_precolored_node���}����}��@�@@@��@@���!n���}����}��@�@@@������!n���~����~��@�@@@����(Register����!r���������@�@@@�����@@@@�������$List#mem���������@�@@@��@����!r���������@�@@@��@����&colors�������@�@@@@�@@@���@�� @��� @��@@@@������� @��� @��@@�@@@@��~��@@@�SA@@@��}��@@�@���@�����)nb_colors��) B� �* B�	@�@@@�������$List&length��6 B��7 B�@�@@@��@����&colors��A B��B B�@�@@@@�@@@@��F B��@@�@���@�����,colorization��R D $�S D 0@�@@@��@@���(coloring��\ D 1�] D 9@�@@@��@@���!x��f D :�g D ;@�@@@���������)LValueMap$find��u E>D�v E>R@�@@@��@����!x��� E>S�� E>T@�@@@��@����(coloring��� E>U�� E>]@�@@@@�@@@������)Not_found��� E>c�� E>l@@�@@@@����)Undecided��� E>p�� E>y@@�@@@@��� E>@@@@�@A@@�KA@@@��� D  @@�	@���@�����3assign_colorization��� G{�� G{�@�@@@��@@���(coloring��� G{��� G{�@�@@@��@@���!x��� G{��� G{�@�@@@��@@���!c��� G{��� G{�@�@@@�������)LValueMap#add��� H���� H��@�@@@��@����!x��� H���� H��@�@@@��@����!c��� H���� H��@�@@@��@����(coloring��  H��� H��@�@@@@�%@@@�3A@@�>A@@�IA@@@�� G{{@@�	@���@�������0initial_coloring�� K� K"@�@@@��@����(coloring��! K%�" K-@@�@@@�A@@�A@@�  �������$List)fold_left��2 L02�3 L0@@�@@@��@��@@���!c��> L0F�? L0G@�@@@��@@���!r��H L0H�I L0I@�@@@��@�����%color��T MMW�U MM\@�@@@����%Color��] MM_�^ MMd@�������1color_of_register��h MMf�i MMw@�@@@��@����!r��s MMx�t MMy@�@@@@��w MMe�x MMz@��@@@�@@@@��} MMS@�����(register��� N{��� N{�@�@@@�������-RetrolixUtils(register��� N{��� N{�@�@@@��@����!r��� N{��� N{�@�@@@@�@@@@��� N{�@@������3assign_colorization��� O���� O��@�@@@��@����!c��� O���� O��@�@@@��@����(register��� O���� O��@�@@@��@����%color��� O���� O��@�@@@@�%@@@�T@@@��A@@��� L0A�� O��@���� L0B@@@��@�����)LValueMap%empty��� P���� P��@�@@@��@�����3X86_64_Architecture-all_registers��� Q���� Q�	@�@@@@��@@@������@�@@��A@@���)ocaml.doc��������	H In the initial coloring, hardware registers are colored by themselves. �� J��� J�@@@@@@@�� K@@�@���@�����6string_of_colorization�� S		� S		-@�@@@��������'OnStack��! T	9	=�" T	9	D@@�@@@@���(On stack��) T	9	I�* T	9	Q@@��, T	9	H�- T	9	R@@@������%Color��6 U	S	W�7 U	S	\@��@���!r��? U	S	]�@ U	S	^@�@@@�@@@@�������-RetrolixUtils2string_of_register��M U	S	b�N U	S	�@�@@@��@����!r��X U	S	��Y U	S	�@�@@@@�@@@������)Undecided��d V	�	��e V	�	�@@�@@@@���)undecided��l V	�	��m V	�	�@@��o V	�	��p V	�	�@@@@��r S		0@@@@��t S		@@�@���@�����2string_of_coloring��� X	�	��� X	�	�@�@@@��@@���(coloring��� X	�	��� X	�	�@�@@@������"|>��� ]
Z
^�� ]
Z
`@�@@@��@������"|>��� Y	�	��� Y	�	�@�@@@��@�������)LValueMap(bindings��� Y	�	��� Y	�	�@�@@@��@����(coloring��� Y	�	��� Y	�	�@�@@@@�@@@��@�������$List#map��� Z	�	��� Z	�	�@�@@@��@��@@������!x��� Z	�	��� Z	�	�@�@@@����!c��� Z	�	��� Z	�	�@�@@@@��� Z	�	��� Z	�	�@��@@@�������&Printf'sprintf��� [
 
�� [
 
@�@@@��@���)%s -> %s
��  [
 
� [
 
 @@�� [
 
� [
 
!@@@��@������0string_of_lvalue�� \
"
+� \
"
;@�@@@��@����!x�� \
"
<� \
"
=@�@@@@�� \
"
*� \
"
>@��@@@��@������6string_of_colorization��, \
"
@�- \
"
V@�@@@��@����!c��7 \
"
W�8 \
"
X@�@@@@��; \
"
?�< \
"
Y@��@@@@�J@@@��A Z	�	��B ]
Z
]@���E Z	�	�
@@@@�{@@@@��@@@��@�������&String&concat��T ]
Z
a�U ]
Z
n@�@@@��@��� ��^ ]
Z
p@@��` ]
Z
o�a ]
Z
q@@@@�@@@@��@@@��A@@@��f X	�	�@@�@������!G��p b�q b@�����9RetrolixInterferenceGraph1InterferenceGraph��z b�{ bJ@�@@�����������	� [build_variable_relations forbidden b] computes the interference
    graph for the block [b], assuming that coloring global variables
    is [forbidden]. ��� _
s
s�� a
�@@@@@@@��� b@�@���@�����8build_variable_relations��� cKO�� cKg@�@@@��@@���)forbidden��� cKh�� cKq@�@@@��@@���!b��� cKr�� cKs@�@@@�  ������"|>��� d|��� d|�@�@@@��@�������8RetrolixLivenessAnalysis'process��� d|~�� d|�@�@@@��@����!b��� d|��� d|�@�@@@@�@@@��@�������9RetrolixInterferenceGraph2interference_graph��� e���� e��@�@@@��@����)forbidden��� e���� e��@�@@@��@����!b��� e���� e��@�@@@@�@@@@�6@@@�����!G!t�� cKv� cKy@@�@@@��
 cKtA@@�`A@@�kA@@@�� cKK@@�@���@�����-rewrite_block�� iNR� iN_@�@@@��@@���(coloring��$ iN`�% iNh@�@@@��@@������"xs��1 iNj�2 iNl@�@@@����"is��: iNn�; iNp@�@@@@��> iNi�? iNq@��@@@��@�������"lv��M jtz�N jt|@�@@@��@��@����&lvalue��Z jt�[ jt�@@�@@@����&lvalue��c jt��d jt�@@�@@@�@@@�A@@�A@@�  ��������(Variable�����"Id��{ k���| k��@��@�@��� k���� k��@@@��� k���� k��@��@@@��� k��@@@�!v��� k���� k��@�@@@@��������,colorization��� l���� l��@�@@@��@����(coloring��� l���� l��@�@@@��@����!v��� l���� l��@�@@@@�@@@������%Color��� m���� m��@��@���!r��� m���� m��@�@@@�@@@@��(Register�����!r��� m��� m�	@�@@@��� m��@@@������'OnStack��� n
�� n
@@�@@@@����!v��� n
�� n
@�@@@������)Undecided��� o )�� o 2@@�@@@@����!v��� o 6�� o 7@�@@@@�� l��� p8B@@@�����!l��
 qCI� qCJ@�@@@@����!l�� qCN� qCO@�@@@@�� jt�@@@��@������@�@@������@�@@�@@��A@@@��$ jtv@@��@�����"rv��. sU[�/ sU]@�@@@������)Immediate����!l��> tiz�? ti{@�@@@��B tio@@@@��)Immediate�����!l��M ti��N ti�@�@@@��Q ti@@@��������&lvalue��\ u���] u��@��_ u��@@@�!l��c u���d u��@�@@@@�  ������"lv��p u���q u��@�@@@��@����!l��{ u���| u��@�@@@@�@@@@����&rvalue��� u���� u��@@�@@@��� u���� u��A@@@��� sU`@@@@��� sUW@@�  !�����$List��� w���� w��@�@@A@��@�����#var��� x���� x��@�@@@��@@���!x��� x���� x��@�@@@��(Variable�����!x��� x���� x��@�@@@��� x��@@@�A@@@��� x��@@��@�����"xs��� y���� y��@�@@@������&filter��� y���� y��@�@@@��@��@@���!x��� y���� y��@�@@@������!=��� y��� y�@�@@@��@������,colorization��� y���� y�
@�@@@��@����(coloring�� y�� y�@�@@@��@������#var�� y�� y�@�@@@��@����!x�� y�� y�@�@@@@��" y��# y�@��@@@@�,@@@��@����'OnStack��/ y��0 y�%@@�@@@@�8@@@��4 y���5 y�&@���8 y��	@@@��@����"xs��A y�'�B y�)@�@@@@�n@@@@��F y��@@��@�����"is��P z-5�Q z-7@�@@@������#map��[ z-:�\ z-=@�@@@��@��@@������!l��j z-D�k z-E@�@@@����!i��s z-G�t z-H@�@@@@��w z-C�x z-I@��@@@�������!l��� z-N�� z-O@�@@@��������-RetrolixUtils,map_on_value��� z-Q�� z-k@�@@@��@����"lv��� z-l�� z-n@�@@@��@����"rv��� z-o�� z-q@�@@@��@����!i��� z-r�� z-s@�@@@@�%@@@@��� z-M�� z-t@��8@@@��� z->�� z-u@���� z-?	@@@��@����"is��� z-v�� z-x@�@@@@�s@@@@��� z-1@@�������"xs��� {|��� {|�@�@@@�����"is��� {|��� {|�@�@@@@��� {|��� {|�@��@@@�@@@��@@@�,@@@�W�� |��@@@�c@@@��@@@��A@@��A@@����	��������	h [rewrite_block coloring b] rewrites [b] to use more hardware
    registers as described by [coloring]. ��	  g���	 h!M@@@@@@@��	 iNN@@�@���A�    �/simplify_result��	 ����	 ���@@@��Р/PrecoloredGraph��	 ���	 ��@�@@��	 ���@@�Р0SimplifiableNode��	 ��	  �%@�������)NodeLabel!t��	+ �)�	, �4@@�@@@@@��	/ �@@�Р2NoSimplifiableNode��	5 �59�	6 �5K@�@@��	9 �57@@@A@���B	֐������
  R

   Graph simplification
   ====================

   Given an interference graph, there are three possible cases:

   1. The graph only contains nodes that are not colorable because
      they are hardware registers or global variables for instance.
      The [initial_coloring] is fine for this graph.

   2. There is a simplifiable node in the graph, that is a node whose
      degree is strictly less than the number of available [colors].

   3. There are no simplifiable nodes in the graph. The coloring
      algorithm must try different from simplification to continue
      its work.

��	F ~���	G ���@@@@@@@��	I ���@@�@���@�����(simplify��	U ����	V ���@�@@@��@@�����+uncolorable��	a ����	b ��@�@@@��@�����)NodeLabel!t��	n ���	o ��@@�@@@����$bool��	w ���	x ��@@�@@@�@@@��	| ����	} ��@@@��@@���!g��	� ���	� ��@�@@@�  ������(failwith��	� �03�	� �0;@�@@@��@���:Student! This is your job!��	� �0=�	� �0W@@��	� �0<�	� �0X@@@@�@@@����/simplify_result��	� ���	� ��-@@�@@@��	� ��A@@�)A@@�3A@@����
K�������	� [simplify uncolorable g] observes [g] to determine the
   [simplify_result]. [uncolorable] is a predicate to filter
   nodes that are not colorable. ��	� �MM�	� ���@@@@@@@��	� ���@@� @�����	�
^�������
  �

   Variable spilling
   =================

   At some point, if there is no more simplification (or coalescing)
   to do, we must choose a variable that can be potentially spilled,
   that is allocated [OnStack]. As graph coloring is NP-complete,
   there is no way to quickly compute a local optimal choice. Yet,
   considering the graph and the instructions, some reasonable
   heuristic can be defined.

��	� �ZZ�	� ���@@@@@@���@�����7pick_spilling_candidate��	� �X\�	� �Xs@�@@@��@@�����+uncolorable��	� �Xu�	� �X�@�@@@��@�����)NodeLabel!t��	� �X��	� �X�@@�@@@����$bool��	� �X��	� �X�@@�@@@�@@@��
 �Xt�
 �X�@@@��@@���!g��

 �X��
 �X�@�@@@��@@�@��
 �X��
 �X�@@@�  ������(failwith��
 ����
 ���@�@@@��@���:Student! This is your job!��
' ����
( ���@@��
* ����
+ ���@@@@�@@@�����)NodeLabel!t��
5 ����
6 ���@@�@@@��
9 ���A@@�*A@@�2A@@�<A@@���E
ِ������	X [pick_spilling_candidate uncolorable g b] returns a node to
    consider for spilling. ��
I ����
J �:W@@@@@@@��
L �XX"@@�#@���@�����	 colorize_block_variables_naively��
X ����
Y ���@�@@@��@@���)forbidden��
b ����
c ���@�@@@��@@���!b��
l ����
m ���@�@@@������(failwith��
w ����
x ���@�@@@��@���:Student! This is your job!��
� ����
� ���@@��
� ����
� �� @@@@�@@@�A@@�'A@@����%�������	� [colorize_block_variables_naively forbidden b] rewrites [b] to
    use more hardware registers if that is possible. [forbidden]
    is a list of variables that cannot be stored in hardware registers. ��
� ����
� �Z�@@@@@@@��
� ���@@�@���@�����,can_coalesce��
� ����
� ���@�@@@��@@���!g��
� ����
� ���@�@@@��@@���"n1��
� ����
� ���@�@@@��@@���"n2��
� ����
� ���@�@@@������(failwith��
� ����
� ���@�@@@��@���:Student! This is your job!��
� ����
� ���@@��
� ����
� ���@@@@�@@@�A@@�'A@@�2A@@����|�������	�

   Coalescence
   ===========

   We can coalesce two nodes if they are not in conflict and if Briggs'
   or George's criterion is satisfied.

��
� ��
� ���@@@@@@@��
� ���@@�@���@�����	%colorize_block_variables_meticulously��
� �cg�
� �c�@�@@@��@@���)forbidden�� �c�� �c�@�@@@��@@���!b�� �c�� �c�@�@@@������(failwith�� ���� ���@�@@@��@���:Student! This is your job!��$ ����% ���@@��' ����( ���@@@@�@@@�A@@�'A@@���4Ȑ������	 [colorize_block_variables_meticulously forbidden b] performs
    register allocation on [b] trying to optimize variable copy. ��8 ����9 �b@@@@@@@��; �cc@@�@���@�����/translate_block��G ����H ���@�@@@��@@���)forbidden��Q ����R ��@�@@@��@@���!b��[ ���\ ��@�@@@�  !�����'Options��g ��	�h ��@�@@A@��������4get_regalloc_variant��t ��u �/@�@@@��@����"()�� �0�� �2@@�@@@@�@@@������%Naive��� �8<�� �8A@@�@@@@������	 colorize_block_variables_naively��� �EJ�� �Ej@�@@@��@����)forbidden��� �Ek�� �Et@�@@@��@����!b��� �Eu�� �Ev@�@@@@�@@@������)Realistic��� �w{�� �w�@@�@@@@������	%colorize_block_variables_meticulously��� ����� ���@�@@@��@����)forbidden��� ����� ���@�@@@��@����!b��� ����� ���@�@@@@�@@@@��� �@@@�y�� ���@@@��A@@��A@@�����������<

   Putting all together.

��� ����� ���@@@@@@@��� ���@@�@���@�����)translate��� ����� ���@�@@@��@@���!p�� ����	 ���@�@@@��@�����)variables�� ���� ���@�@@@�������$List#map��! ����" ���@�@@@��@��@@���!x��- ����. ���@�@@@��(Variable�����!x��: ���; ��@�@@@��> ���@@@��@ ����A ��@���D ���
@@@@�%@@@@��G ���@@��@�����'globals��Q ��R �@�@@@������)variables��\ ��] �%@�@@@��@�������-RetrolixUtils0global_variables��k �'�l �E@�@@@��@����!p��v �F�w �G@�@@@@��z �&�{ �H@��@@@@�#@@@@��� �@@��A�����'program��� �LV�� �L]@�@@@��@@���"ds��� �L^�� �L`@�@@@�������$List#map��� �cg�� �co@�@@@��@����*definition��� �cp�� �cz@�@@@��@����"ds��� �c{�� �c}@�@@@@�@@@�(A@@@��� �LN@�����*definition��� �~��� �~�@�@@@��������'DValues��� ����� ���@��@������"xs��� ����� ���@�@@@����!b��� ����� ���@�@@@@��� ����� ���@��@@@�@@@@����'DValues��� ����� ���@��������"xs�� ���� ���@�@@@�������/translate_block�� ���� ���@�@@@��@����'globals�� ���� ���@�@@@��@����!b��$ ����% ���@�@@@@�@@@@��) ����* ���@��+@@@�8@@@������)DFunction��6 ����7 ���@��@������!f��B ����C ���@�@@@����"xs��K ����L ���@�@@@����!b��T ����U ���@�@@@@��X ����Y ���@��@@@�'@@@@����)DFunction��c � �d � @��������!f��o � �p � @�@@@�����"xs��y � �z � @�@@@�������/translate_block��� � �� � (@�@@@��@������!@��� � 7�� � 8@�@@@��@������)variables��� � *�� � 3@�@@@��@����"xs��� � 4�� � 6@�@@@@�@@@��@����'globals��� � 9�� � @@�@@@@��� � )�� � A@��@@@��@����!b��� � B�� � C@�@@@@�E@@@@��� � �� � D@��`@@@�m@@@������1DExternalFunction��� �EK�� �E\@��@���!f��� �E]�� �E^@�@@@�@@@@����1DExternalFunction��� �bi�� �bz@�����!f��� �b{�� �b|@�@@@�@@@@��� �~�@@@@��� �~�@@������"|>�� ���� ���@�@@@��@������'program�� ���� ���@�@@@��@����!p�� ���� ���@�@@@@�@@@��@�����0RetrolixKillMove*kill_moves��* ����+ ���@�@@@@�@@@�r@@@��@@@��@@@�*A@@@��3 ���	@@�
@@