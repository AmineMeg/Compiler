Caml1999M029����   "      
   	 src/retrolixInterferenceGraph.ml����  y  +  S  Y�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@����������+RetrolixAST��	)src/retrolix/retrolixInterferenceGraph.mlApu�Ap @@�@@A��App@@�@��������8RetrolixLivenessAnalysis��B A F�B A ^@�@@A��B A A@@�@��������-RetrolixUtils��!C _ d�"C _ q@�@@A��%C _ _@@�@�����*ocaml.text��������5 Interference graph. ��6E s s�7E s �@@@@@@���A�    �(relation��@H � ��AH � �@@@��Р(Conflict��HL���IL��@�@@��LL��@@�Р*Preference��RQ>B�SQ>L@�@@��VQ>@@@@A@���)ocaml.doc�����	> In the interference graph, there will be two kinds of edges: ��dG � ��eG � �@@@@@@@��gH � �@@�@�����B�������5 Interference graph. ��wSNN�xSNh@@@@@@������)EdgeLabel���Ujq��Ujz@�����A�    �!t���V����V��@@@@A�����(relation���V����V��@@�@@@@���V��@@�@���@�����'compare���W����W��@�@@@����'compare���W����W��@�@@@@���W��@@�@���@�����#all���X����X��@�@@@����"::���X����X��A��������(Conflict���X��@@�@@@��������X��A��������*Preference���X��@@�@@@�����"[]�	'A@�
(A@@@�)A@@�*A@@@�,+A@@���X��-@@@@���X��/@@�0@���@�����)to_string��Y���Y��@�@@@��������(Conflict��Y���Y��@@�@@@@���!c��Y���Y��@@��Y���Y��@@@������*Preference��%Y� �&Y�
@@�@@@@���!p��-Y��.Y�@@��0Y��1Y�@@@@��3Y��@@@@��5Y��@@�@@��8Uj}�9Z@@@��;Ujj@�@������)NodeLabel��E\�F\'@�����A�    �!t��Q]18�R]19@@@@A������+RetrolixAST&lvalue��\]1<�]]1N@@�@@@@��`]13@@�@���@�����'compare��l^OU�m^O\@�@@@����'compare��u^O_�v^Of@�@@@@��y^OQ@@�@���@�����)to_string���_gm��_gv@�@@@�����-RetrolixUtils0string_of_lvalue���_gy��_g�@�@@@@���_gi@@�@@���\*��`��@@@���\@�@������1InterferenceGraph���b����b��@���������%Graph$Make���b����b��@�@@����)EdgeLabel���b����b��@�@@���b��@@����)NodeLabel���b����b��@�@@���b��@@@���b��@�@���A�    �!t���d����d��@@@@A������1InterferenceGraph!t���d����d��@@�@@@@���d��@@�@���@�����(add_node���g?C��g?K@�@@@��@@���!g���g?L��g?M@�@@@��@@���!n��g?N�g?O@�@@@���������1InterferenceGraph(add_node��hRX�hRr@�@@@��@����!g��hRs� hRt@�@@@��@����b��)hRv�*hRxA��������!n��5hRw@�@@@�����N�A@�	A@@@�A@@��@hRu@@@@�.@@@�������1InterferenceGraph+InvalidNode��Liy��Miy�@@�@@@@����!g��Uiy��Viy�@�@@@@��YhRT@@@�VA@@�aA@@���󐠠����	? [add_node g n] inserts [n] in [g] if it is not already there. ��hf���if�>@@@@@@@��kg??@@�@���@�����,add_relation��wm/3�xm/?@�@@@��@@���!g���m/@��m/A@�@@@��@@���!c���m/B��m/C@�@@@��@@���"n1���m/D��m/F@�@@@��@@���"n2���m/G��m/I@�@@@�  �  ������"<>���nLY��nL[@�@@@��@����"n1���nLV��nLX@�@@@��@����"n2���nL\��nL^@�@@@@���nLU��nL_@��@@@���nLN@@@��@�����!g���oag��oah@�@@@������(add_node���oak��oas@�@@@��@����!g���oat��oau@�@@@��@����"n1���oav��oax@�@@@@�@@@@���oac@@��@�����!g��p|��p|�@�@@@������(add_node��p|��p|�@�@@@��@����!g��p|��p|�@�@@@��@����"n2��(p|��)p|�@�@@@@�@@@@��-p|~@@�������1InterferenceGraph(add_edge��8q���9q��@�@@@��@����!g��Cq���Dq��@�@@@��@����"n1��Nq���Oq��@�@@@��@����!c��Yq���Zq��@�@@@��@����"n2��dq���eq��@�@@@@�0@@@�<@@@�m@@@��@@@��A@@��A@@��	A@@��
A@@����������	� [add_relation g c n1 n2] creates an edge of kind [c] between [n1]
   and [n2]. This function inserts [n1] and [n2] in [g] if needed.��{k���|l�.@@@@@@@��~m//@@�@���@�����/are_in_relation���u-1��u-@@�@@@��@@���!g���u-A��u-B@�@@@��@@���!c���u-C��u-D@�@@@��@@���"n1���u-E��u-G@�@@@��@@���"n2���u-H��u-J@�@@@�������1InterferenceGraph-are_connected���vMO��vMn@�@@@��@����!g���vMo��vMp@�@@@��@����"n1���vMq��vMs@�@@@��@����!c���vMt��vMu@�@@@��@����"n2���vMv��vMx@�@@@@�0@@@�>A@@�IA@@�TA@@�_A@@������������	h [are_in_relation g c] is a predicate returning [true] if [n1]
    and [n2] are in relation [c] in [g]. ���s��� t,@@@@@@@��u--@@�@���@�����+empty_graph��y���y��@�@@@�����1InterferenceGraph%empty��y���y��@�@@@������������2 The empty graph. ��(xzz�)xz�@@@@@@@��+y��@@�@���@�����2interference_graph��7 N	�	��8 N	�	�@�@@@��@@���)forbidden��A N	�	��B N	�	�@�@@@��@@���!b��K N	�	��L N	�	�@�@@@��@@���(liveness��U N	�	��V N	�	�@�@@@�  ������(failwith��b O	�	��c O	�	�@�@@@��@���:Student! This is your job!��l O	�	��m O	�
@@��o O	�	��p O	�
	@@@@�@@@����!t��x N	�	��y N	�	�@@�@@@��| N	�	�A@@�)A@@�4A@@�?A@@���)�������
  �

   To construct the interference graph:

   1. At any non-move instruction that defines variable a (where
   live-out variables are b1, ..., bj) add interference edges (a, b1),
   ..., (a, bj).

   2. At a move instruction a ← c (where variables b1, ..., bj are
   live-out) add interference edges (a, b1), ..., (a, bj) for any bi
   that is not the same as c. Besides, add an preference edge (a, c)
   if a and c are not in interference. Notice that interference
   overrides preference: if a subsequel instruction implies an
   interference between a and c, the preference relation is removed.

   [forbidden] represents the list of global variables: they must not be
   colorized. Hence, they more or less behave as the hardware registers.

���{���� M	�	�@@@@@@@��� N	�	� @@�!@@