Caml1999N029����            /src/digraph.mli����  '�    =  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	� A module for directed graphs.

    This module, like the one in {!m Graph}, provides a functional
    representation of directed graphs.
 ��9src/utilities/digraph.mliA``�E � �@@@@@@�����$EDGE��
G � ��G � �@������������&ExtStd-PrintableType��H � ��H � �@�@@��H � �@@�@@��"G � ��#I � �@@@��%G � �@�@�����&VERTEX��.K � ��/K � �@������������&ExtStd-PrintableType��?L�@L$@�@@��CL@@�@������%Label��MM%.�NM%3@�����&ExtStd4OrderedPrintableType��WM%6�XM%Q@�@@@��[M%'@�@���Р%label��dNRX�eNR]@��@����!t��nNR`�oNRa@@�@@@�����%Label!t��yNRe�zNRl@@�@@@�@@@@@��~NRT@�@@���K ���Omp@@@���K � �@�@������$Make���Qry��Qr}@�����$Edge���Qr��Qr�@����$EDGE���Qr���Qr�@�@@�����&Vertex���Qr���Qr�@����&VERTEX���Qr���Qr�@�@@�����A�    �!t���S����S��@@@@A@���)ocaml.doc]�������> The type of directed graphs. ���R����R��@@@@@@@���S��@@�@���Р%print���V"(��V"-@��@����!t���V"0��V"1@@�@@@�����&PPrint(document���V"5��V"D@@�@@@�@@@@���2��������	F Pretty-print the internal representation of the graph for debugging. ���U����U�!@@@@@@@��V"$@�@���Р-dump_graphviz��
Z���Z��@��@����!t��Z���Z��@@�@@@��@����+out_channel��Z��� Z��@@�@@@����$unit��(Z���)Z��@@�@@@�@@@�@@@@���mɐ������	e Dump the graph in the Graphviz "dot", so that it can later be displayed by
      dotty and friends. ��9XFH�:Y��@@@@@@@��<Z��@�@�����Mܐ������0 {2 Exceptions} ��L\���M\��@@@@@@������0Vertex_not_found��V^��W^�@���������&Vertex%Label!t��e^��f^�*@@�@@@@@��i^��@@@�@������4Edge_already_present��s`,8�t`,L@���������&Vertex%Label!t���`,P��`,^@@�@@@�������&Vertex%Label!t���`,a��`,o@@�@@@@@���`,.@@.@�@������4�������	# {2 Graph construction operations} ���bqs��bq�@@@@@@���Р%empty���e����e��@����!t���e����e��@@�@@@@����T�������4 The empty digraph. ���d����d��@@@@@@@���e��@�@������6Vertex_already_present���g����g��@���������&Vertex%Label!t���g����g��@@�@@@@@���g��@@~@�@���Р*add_vertex���l����l��@��@����!t���l����l��@@�@@@��@�����&Vertex!t��l���l��@@�@@@����!t��l���l��@@�@@@�@@@�@@@@���R��������	� [add_vertex gr v] add the vertex [v] to the graph [gr]. This function
     raises {!e Vertex_already_present} if a node with label [V.label v] has
     already been added to [gr]. ��i �k��@@@@@@@��!l��@�@���Р(add_edge��*s>D�+s>L@��@����!t��4s>O�5s>P@@�@@@���#src������&Vertex%Label!t��Es>X�Fs>f@@�@@@���#dst������&Vertex%Label!t��Vs>n�Ws>|@@�@@@��@�����$Edge!t��cs>��ds>�@@�@@@����!t��ls>��ms>�@@�@@@�@@@��qs>j@@@��ss>T@@@�A@@@@�����������
  R [add_edge gr ~src ~dst e] adds an edge [e] between two vertices [src] and
     [dst] of [gr], identified by their labels. This function raises {!e
     Vertex_not_found} when either [src] or [dst] is not already present in
     [gr], and raises {!e Edge_already_present} when an edge between [src] and
     [dst] has already been added. ���n����r=@@@@@@@���s>@@�@������$�������	  {2 Graph traversal operations} ���u����u��@@@@@@���Р+find_vertex���y?E��y?P@��@������&Vertex%Label!t���y?S��y?a@@�@@@��@����!t���y?e��y?f@@�@@@�����&Vertex!t���y?j��y?r@@�@@@�@@@�@@@@���b�������	� [find_vertex vl g] finds the vertex with label [vl] in [g], or raises {!
     Vertex_not_found} if [g] contains no such vertex. ���w����x>@@@@@@@���y?A@�@���Р-fold_vertices���}	��}	@��@��@�����&Vertex!t���}	 ��}	(@@�@@@��@��!a���}	,��}	.@@@��!a���}	2��}	4@@@�	@@@�@@@��@����!t��}	9�}	:@@�@@@��@��!a��}	>�}	@@@@��!a��}	D�}	F@@@�	@@@�@@@��}	@@@@���\��������	� [fold_vertices f acc gr] applies [f v1 (f v2 (... acc))] to all the
     vertices [vi] of [gr]. They are enumerated in no particular order. ��({tv�)|�@@@@@@@��+}	@�@���A�    �+edge_folder��5HR�6H]@����!a��=HO�>HQ@@@�BA@@@A���@�����&Vertex!t��KH`�LHh@@�@@@��@�����$Edge!t��XHl�YHr@@�@@@��@��!a��aHv�bHx@@@��!a��gH|�hH~@@@�	@@@�@@@�!@@@@��mHJ@@�@���Р*fold_edges��v C���w C��@��@���#src�����&Vertex!t��� D�	 �� D�	@@�@@@���#dst�����&Vertex!t��� D�	�� D�	@@�@@@��@�����$Edge!t��� D�	�� D�	"@@�@@@��@��!a��� D�	&�� D�	(@@@��!a��� D�	,�� D�	.@@@�	@@@�@@@��� D�	@@@��� D��@@@��@����!t��� D�	3�� D�	4@@�@@@��@��!a��� D�	8�� D�	:@@@��!a��� D�	>�� D�	@@@@�	@@@�@@@��� D��@@@@���r�������	\ [fold_edges f acc gr] is similar to [fold_vertices] but applies to the
     edges of [gr]. ��� A���� B��@@@@@@@��� C��@�@���Р/fold_successors��� F	B	H�� F	B	W@��@������&Vertex%Label!t��� F	B	Z�� F	B	h@@�@@@��@����+edge_folder�� F	B	o� F	B	z@���!a�� F	B	l� F	B	n@@@@�	@@@��@��!a�� F	B	~� F	B	�@@@��@����!t��! F	B	��" F	B	�@@�@@@��!a��( F	B	��) F	B	�@@@�
@@@�@@@�@@@�2@@@@@��/ F	B	D@�@���Р1fold_predecessors��8 H	�	��9 H	�	�@��@������&Vertex%Label!t��F H	�	��G H	�	�@@�@@@��@����+edge_folder��Q H	�	��R H	�	�@���!a��X H	�	��Y H	�	�@@@@�	@@@��@��!a��a H	�	��b H	�	�@@@��@����!t��k H	�	��l H	�	�@@�@@@��!a��r H	�	��s H	�	�@@@�
@@@�@@@�@@@�2@@@@@��y H	�	�@�@���Р-iter_vertices��� L
C
I�� L
C
V@��@��@�����&Vertex!t��� L
C
Z�� L
C
b@@�@@@����$unit��� L
C
f�� L
C
j@@�@@@�@@@��@����!t��� L
C
o�� L
C
p@@�@@@����$unit��� L
C
t�� L
C
x@@�@@@�@@@��� L
C
Y@@@@����P�������	a [iter_vertices f gr] applies function [f] to every vertex of [gr], in no
     particular order. ��� J	�	��� K
)
B@@@@@@@��� L
C
E@�@���A�    �)edge_iter��� N
z
��� N
z
�@@@@A���@�����&Vertex!t��� N
z
��� N
z
�@@�@@@��@�����$Edge!t��� N
z
��� N
z
�@@�@@@����$unit��� N
z
��� N
z
�@@�@@@�@@@�@@@@��� N
z
|@@�@���Р*iter_edges��� R�  R@��@���#src�����&Vertex!t�� S )� S 1@@�@@@���#dst�����&Vertex!t�� S 9� S A@@�@@@��@�����$Edge!t��+ S E�, S K@@�@@@����$unit��4 S O�5 S S@@�@@@�@@@��9 S 5@@@��; S %@@@��@����!t��D S X�E S Y@@�@@@����$unit��M S ]�N S a@@�@@@�@@@��R S $@@@@���������	\ [iter_edges f gr] applies function [f] to every edge of [gr], in no
     particular order. ��_ P
�
��` Q
�@@@@@@@��b R@�@���Р/iter_successors��k X*0�l X*?@��@����)edge_iter��u X*B�v X*K@@�@@@��@����!t��� X*O�� X*P@@�@@@��@������&Vertex%Label!t��� X*T�� X*b@@�@@@����$unit��� X*f�� X*j@@�@@@�@@@�@@@�)@@@@����:�������	� [iter_successors f gr v] applies function [f] to every outgoing edge of
     [v] in [gr], in LIFO order. This function raises {!e Vertex_not_found} when
     [v] has not been added to [gr]. ��� Uce�� W)@@@@@@@��� X*,@�@���Р1iter_predecessors��� ]5;�� ]5L@��@����)edge_iter��� ]5O�� ]5X@@�@@@��@����!t��� ]5\�� ]5]@@�@@@��@������&Vertex%Label!t��� ]5a�� ]5o@@�@@@����$unit��� ]5s�� ]5w@@�@@@�@@@�@@@�)@@@@���)��������	� [iter_predecessors f gr v] applies function [f] to every incoming edge of
     [v] in [gr], in LIFO order. This function raises {!e Vertex_not_found} when
     [v] has not been added to [gr]. ��� Zln�� \4@@@@@@@��� ]57@�@���Р0initial_vertices�� a��� a��@��@����!t�� a��� a��@@�@@@����$list�� a�� a�	@������&Vertex!t�� a���  a�@@�@@@@�@@@�@@@@���d��������	] [initial_vertices gr] returns the list of all nodes of [gr] that have no
     predecessors. ��0 _y{�1 `��@@@@@@@��3 a��@� @���Р1terminal_vertices��< eou�= eo�@��@����!t��F eo��G eo�@@�@@@����$list��O eo��P eo�@������&Vertex!t��Z eo��[ eo�@@�@@@@�@@@�@@@@������������	\ [terminal_vertices gr] returns the list of all nodes of [gr] that have no
     successors. ��k c�l d[n@@@@@@@��n eoq@� @@��qQr��r f��@@��tQr�@@��vQr~@@@��xQrr@�@@