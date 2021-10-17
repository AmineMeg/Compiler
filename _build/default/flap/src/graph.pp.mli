Caml1999N028����            2flap/src/graph.mli����  &�  �  �  O�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������
  = A module for undirected graphs.

    This module provides a functional data structure to represent a
    graph which nodes contain a set of labels and which edges can have
    one label too.

    We maintain the invariant that two nodes always have different
    labels: thus, nodes are identified by their labels.

��<flap/src/utilities/graph.mliAcc�Jce@@@@@@�����,EdgeLabelSig��
Lgs�Lg@������������#Set+OrderedType��M���M��@�@@��M��@���)ocaml.doc��������	0 [all] enumerates all the possible edge labels. ��-N���.N��@@@@@@@�@���Р#all��7O���8O��@����$list��?O���@O��@�����!t��HO���IO��@@�@@@@�@@@@���,萠�����+*@*@@@*@*���6򐠠����	7 [to_string e] converts [e] in a human readable value. ��bP���cP�1@@@@@@@��eO��&@�'@���Р)to_string��nQ2:�oQ2C@��@����!t��xQ2F�yQ2G@@�@@@����&string���Q2K��Q2Q@@�@@@�@@@@���e!�������/.@.@@@.@.@���Q26@�@@���Lg���RRU@@@���Lgg@�@�����,NodeLabelSig���TWc��TWo@������������#Set+OrderedType���Uv���Uv�@�@@���Uvx@����Q�������	7 [to_string n] converts [n] in a human readable value. ���V����V��@@@@@@@�@���Р)to_string���W����W��@��@����!t���W����W��@@�@@@����&string���W����W��@@�@@@�@@@@����~�������-,@,@@@,@,@���W��@�@@���TWr��X��@@@���TWW@�@������$Make���Z����Z��@�����)EdgeLabel��Z��Z�
@����,EdgeLabelSig��Z��Z�@�@@�����)NodeLabel��Z��Z�%@����,NodeLabelSig�� Z�(�!Z�4@�@@�����A�    �!t��-][b�.][c@@@@A@���ː������6 The type for graphs. ��;\=?�<\=Z@@@@@@@��>][]@@�@���Р%empty��G`��H`�@����!t��O`��P`�@@�@@@@���2�����2 The empty graph. ��^_eg�__e~@@@@@@@��a`�@�@���Р(add_node��jh���kh��@��@����!t��th���uh��@@�@@@��@����$list��h����h��@������)NodeLabel!t���h����h��@@�@@@@�@@@����!t���h����h��@@�@@@�@@@�%@@@@���y5�������
   [add_node g [n1;...;nN]] returns a new graph that extends [g] with
      a new node labelled by [n1;...;nN]. None of the [nI] can be used
      by another node in [g]. Otherwise, [InvalidNode] is raised.

      In the sequel, the new node can be identified by any [nI].
  ���b����g��@@@@@@@���h��@�@������+InvalidNode���i����i��@��@@���i��@@Q@�@������+InvalidEdge���j����j�@��@@���j��@@`@�@���Р(add_edge���o����o��@��@����!t���o����o��@@�@@@��@�����)NodeLabel!t���o����o��@@�@@@��@�����)EdgeLabel!t���o����o�@@�@@@��@�����)NodeLabel!t�� o��o�@@�@@@����!t��	o��
o�@@�@@@�@@@�@@@�)@@@�7@@@@������������	� [add_edge g n1 e n2] returns a new graph that extends [g] with a
      new edge between [n1] and [n2]. The edge is labelled by [e]. If [n1]
      or [n2] does not exist, then [InvalidNode] is raised. ��l�n��@@@@@@@��o��@�@���Р(del_edge��(uIO�)uIW@��@����!t��2uIZ�3uI[@@�@@@��@�����)NodeLabel!t��?uI_�@uIj@@�@@@��@�����)EdgeLabel!t��LuIn�MuIy@@�@@@��@�����)NodeLabel!t��YuI}�ZuI�@@�@@@����!t��buI��cuI�@@�@@@�@@@�@@@�)@@@�7@@@@���I�������
  $ [del_edge g n1 e n2] returns a new graph that restricts [g] by removing
      thge edge between [n1] and [n2]. The edge is labelled by [e]. If [n1]
      or [n2] does not exist, then [InvalidNode] is raised. If there is no
      such edge between [n1] and [n2] then [InvalidEdge] is raised. ��uq�vtH@@@@@@@��xuIK@�@���Р(del_node���y����y�@��@����!t���y���y�@@�@@@��@�����)NodeLabel!t���y���y�@@�@@@����!t���y���y�@@�@@@�@@@�@@@@����B�������	^ [del_node g n] returns a new graph that contains [g] minus the
      node [n] and its edges. ���w����x��@@@@@@@���y��@�@���Р*neighbours���~����~��@��@����!t���~����~��@@�@@@��@�����)EdgeLabel!t���~����~��@@�@@@��@�����)NodeLabel!t���~����~�	@@�@@@����$list���~�	��~�	@�����$list���~�	��~�	@������)NodeLabel!t���~�	� ~�	@@�@@@@�@@@@�@@@�#@@@�1@@@�?@@@@������������	� [neighbours g e n] returns the neighbours of [n] in [g]
      that are connected with an edge labelled by [e]. One neighbour is
      characterized by all its node labels. ��{�}��@@@@@@@��~��+@�,@���Р%edges�� B	�	��  B	�	�@��@����!t��) B	�	��* B	�	�@@�@@@��@�����)EdgeLabel!t��6 B	�	��7 B	�	�@@�@@@����$list��? B	�	��@ B	�	�@��������$list��K B	�	��L B	�	�@������)NodeLabel!t��V B	�	��W B	�	�@@�@@@@�@@@�����$list��a B	�	��b B	�	�@������)NodeLabel!t��l B	�	��m B	�	�@@�@@@@�@@@@�@@@@��r B	�	�3@@@�>4@@@�L5@@@@���U�������	 [edges g e] returns all the edges of kind [e] in [g].
      WARNING: This function is inefficient! Use it only for debugging. ��� @		!�� A	[	�@@@@@@@��� B	�	�E@�F@���Р%nodes��� E
%
+�� E
%
0@��@����!t��� E
%
3�� E
%
4@@�@@@����$list��� E
%
I�� E
%
M@�����$list��� E
%
D�� E
%
H@������)NodeLabel!t��� E
%
8�� E
%
C@@�@@@@�@@@@�@@@�#@@@@����V�������	) [nodes g] returns all the nodes of [g]. ��� D	�	��� D	�
$@@@@@@@��� E
%
')@�*@���Р*min_degree��� J�� J@��@��@�����)NodeLabel!t��� K!&�� K!1@@�@@@����$bool��� K!5�� K!9@@�@@@�@@@��@����!t��� L;B�� L;C@@�@@@��@�����)EdgeLabel!t�� L;G� L;R@@�@@@��@�����)EdgeLabel!t�� L;V� L;a@@�@@@����&option�� L;y� L;@��������#int��$ L;f�% L;i@@�@@@������)NodeLabel!t��0 L;l�1 L;w@@�@@@@�@@@@��5 L;e@@@�(@@@�6@@@�D @@@��: K!%"@@@@���א������	� [min_degree excluded g c nc] returns a node [n] of minimal degree for [c]
      that has no edge for [nc] and so that not [excluded c], or returns None
      if no such node exists. ��G G
O
Q�H I
�@@@@@@@��J J2@�3@���Р)pick_edge��S P���T P��@��@����!t��] P���^ P��@@�@@@��@�����)EdgeLabel!t��j P���k P�@@�@@@����&option��s P�&�t P�,@���������)NodeLabel!t��� P��� P�@@�@@@������)NodeLabel!t��� P��� P�$@@�@@@@�@@@@��� P�
@@@�* @@@�8!@@@@���u1�������	[ [pick_edge g c] returns an arbitrary edge for [c] or None if
      there is no such edge. ��� N���� O��@@@@@@@��� P��1@�2@���Р%merge��� T���� T��@��@����!t��� T���� T��@@�@@@��@�����)NodeLabel!t��� T���� T��@@�@@@��@�����)NodeLabel!t��� T���� T��@@�@@@����!t��� T���� T��@@�@@@�@@@�@@@�)@@@@����|�������	a [merge g n1 n2] returns a new graph which is [g] in which [n1]
      and [n2] have been merged. ��� R.0�� Ss�@@@@@@@��� T��@�@���Р*all_labels��� W�� W@��@����!t�� W!� W"@@�@@@��@�����)NodeLabel!t�� W&� W1@@�@@@����$list�� WA� WE@������)NodeLabel!t��# W5�$ W@@@�@@@@�@@@�@@@�'@@@@���	Ő������	; [all_labels g n] returns all the node labels of node [n]. ��5 V���6 V�@@@@@@@��8 W @�!@���Р-are_connected��A [���B [��@��@����!t��K [���L [��@@�@@@��@�����)NodeLabel!t��X [���Y [��@@�@@@��@�����)EdgeLabel!t��e [���f [��@@�@@@��@�����)NodeLabel!t��r [���s [��@@�@@@����$bool��{ [���| [��@@�@@@�@@@�@@@�)@@@�7@@@@���b�������	V [are_connected g n1 e n2] returns true iff [n1] and [n2] are connected
      by [e]. ��� YGI�� Z��@@@@@@@��� [��@�@���Р$show��� `���� `��@��@����!t��� `���� `��@@�@@@��@��@�����)NodeLabel!t��� `���� `��@@�@@@����&option��� `���� `��@�����&string��� `���� `��@@�@@@@�@@@�@@@����$unit��� `���� `��@@�@@@��� `��@@@�2@@@@����r�������	� [show g labels] runs [dotty] to display the graph [g]. [labels n] may
      optionally return an additional information to be display in the node
      for [n]. ��� ]���� _��@@@@@@@��� `��@�@���Р$dump��� a���� a��@��@����!t��� a���� a��@@�@@@����&string�� a��� a��@@�@@@�@@@@@�� a��@�@@��	Z�8�
 c��@@��Z�@@��Z� @@@��Z��@�@@