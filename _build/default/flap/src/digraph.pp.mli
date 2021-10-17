Caml1999N028����            4flap/src/digraph.mli����  '�    ;  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	� A module for directed graphs.

    This module, like the one in {!m Graph}, provides a functional
    representation of directed graphs.
 ��>flap/src/utilities/digraph.mliAee�E � �@@@@@@�����$EDGE��
G � ��G � �@������������&ExtStd-PrintableType��H � ��H � �@�@@��H � �@@�@@��"G � ��#I � �@@@��%G � �@�@�����&VERTEX��.K � ��/K �@������������&ExtStd-PrintableType��?L�@L)@�@@��CL@@�@������%Label��MM*3�NM*8@�����&ExtStd4OrderedPrintableType��WM*;�XM*V@�@@@��[M*,@�@���Р%label��dNW]�eNWb@��@����!t��nNWe�oNWf@@�@@@�����%Label!t��yNWj�zNWq@@�@@@�@@@@@��~NWY@�@@���K ���Oru@@@���K � �@�@������$Make���Qw~��Qw�@�����$Edge���Qw���Qw�@����$EDGE���Qw���Qw�@�@@�����&Vertex���Qw���Qw�@����&VERTEX���Qw���Qw�@�@@�����A�    �!t���S����S��@@@@A@���)ocaml.doc]�������> The type of directed graphs. ���R����R��@@@@@@@���S��@@�@���Р%print���V'-��V'2@��@����!t���V'5��V'6@@�@@@�����&PPrint(document���V':��V'I@@�@@@�@@@@���2��������	F Pretty-print the internal representation of the graph for debugging. ���U����U�&@@@@@@@��V')@�@���Р-dump_graphviz��
Z���Z��@��@����!t��Z���Z��@@�@@@��@����+out_channel��Z��� Z��@@�@@@����$unit��(Z���)Z��@@�@@@�@@@�@@@@���mɐ������	e Dump the graph in the Graphviz "dot", so that it can later be displayed by
      dotty and friends. ��9XKM�:Y��@@@@@@@��<Z��@�@�����Mܐ������0 {2 Exceptions} ��L\���M\��@@@@@@������0Vertex_not_found��V^�W^@���������&Vertex%Label!t��e^!�f^/@@�@@@@@��i^@@@�@������4Edge_already_present��s`1=�t`1Q@���������&Vertex%Label!t���`1U��`1c@@�@@@�������&Vertex%Label!t���`1f��`1t@@�@@@@@���`13@@.@�@������4�������	# {2 Graph construction operations} ���bvx��bv�@@@@@@���Р%empty���e����e��@����!t���e����e��@@�@@@@����T�������4 The empty digraph. ���d����d��@@@@@@@���e��@�@������6Vertex_already_present���g����g��@���������&Vertex%Label!t���g����g�@@�@@@@@���g��@@~@�@���Р*add_vertex���l����l��@��@����!t���l����l��@@�@@@��@�����&Vertex!t��l���l��@@�@@@����!t��l���l��@@�@@@�@@@�@@@@���R��������	� [add_vertex gr v] add the vertex [v] to the graph [gr]. This function
     raises {!e Vertex_already_present} if a node with label [V.label v] has
     already been added to [gr]. ��i�k��@@@@@@@��!l��@�@���Р(add_edge��*sCI�+sCQ@��@����!t��4sCT�5sCU@@�@@@���#src������&Vertex%Label!t��EsC]�FsCk@@�@@@���#dst������&Vertex%Label!t��VsCs�WsC�@@�@@@��@�����$Edge!t��csC��dsC�@@�@@@����!t��lsC��msC�@@�@@@�@@@��qsCo@@@��ssCY@@@�A@@@@�����������
  R [add_edge gr ~src ~dst e] adds an edge [e] between two vertices [src] and
     [dst] of [gr], identified by their labels. This function raises {!e
     Vertex_not_found} when either [src] or [dst] is not already present in
     [gr], and raises {!e Edge_already_present} when an edge between [src] and
     [dst] has already been added. ���n����rB@@@@@@@���sCE@�@������$�������	  {2 Graph traversal operations} ���u����u��@@@@@@���Р+find_vertex���yDJ��yDU@��@������&Vertex%Label!t���yDX��yDf@@�@@@��@����!t���yDj��yDk@@�@@@�����&Vertex!t���yDo��yDw@@�@@@�@@@�@@@@���b�������	� [find_vertex vl g] finds the vertex with label [vl] in [g], or raises {!
     Vertex_not_found} if [g] contains no such vertex. ���w����x
C@@@@@@@���yDF@�@���Р-fold_vertices���}��}!@��@��@�����&Vertex!t���}%��}-@@�@@@��@��!a���}1��}3@@@��!a���}7��}9@@@�	@@@�@@@��@����!t��}>�}?@@�@@@��@��!a��}C�}E@@@��!a��}I�}K@@@�	@@@�@@@��}$@@@@���\��������	� [fold_vertices f acc gr] applies [f v1 (f v2 (... acc))] to all the
     vertices [vi] of [gr]. They are enumerated in no particular order. ��({y{�)|�@@@@@@@��+}@�@���A�    �+edge_folder��5MW�6Mb@����!a��=MT�>MV@@@B@@@A���@�����&Vertex!t��JMe�KMm@@�@@@��@�����$Edge!t��WMq�XMw@@�@@@��@��!a��`M{�aM}@@@��!a��fM��gM�@@@�	@@@�@@@�!@@@@��lMO@@�@���Р*fold_edges��u C���v C��@��@���#src�����&Vertex!t��� D�	�� D�	@@�@@@���#dst�����&Vertex!t��� D�	�� D�	@@�@@@��@�����$Edge!t��� D�	!�� D�	'@@�@@@��@��!a��� D�	+�� D�	-@@@��!a��� D�	1�� D�	3@@@�	@@@�@@@��� D�	@@@��� D�	@@@��@����!t��� D�	8�� D�	9@@�@@@��@��!a��� D�	=�� D�	?@@@��!a��� D�	C�� D�	E@@@�	@@@�@@@��� D�	 @@@@���q�������	\ [fold_edges f acc gr] is similar to [fold_vertices] but applies to the
     edges of [gr]. ��� A���� B��@@@@@@@��� C��@�@���Р/fold_successors��� F	G	M�� F	G	\@��@������&Vertex%Label!t��� F	G	_�� F	G	m@@�@@@��@����+edge_folder�� F	G	t� F	G	@���!a�� F	G	q� F	G	s@@@@�	@@@��@��!a�� F	G	�� F	G	�@@@��@����!t��  F	G	��! F	G	�@@�@@@��!a��' F	G	��( F	G	�@@@�
@@@�@@@�@@@�2@@@@@��. F	G	I@�@���Р1fold_predecessors��7 H	�	��8 H	�	�@��@������&Vertex%Label!t��E H	�	��F H	�	�@@�@@@��@����+edge_folder��P H	�	��Q H	�	�@���!a��W H	�	��X H	�	�@@@@�	@@@��@��!a��` H	�	��a H	�	�@@@��@����!t��j H	�	��k H	�	�@@�@@@��!a��q H	�	��r H	�	�@@@�
@@@�@@@�@@@�2@@@@@��x H	�	�@�@���Р-iter_vertices��� L
H
N�� L
H
[@��@��@�����&Vertex!t��� L
H
_�� L
H
g@@�@@@����$unit��� L
H
k�� L
H
o@@�@@@�@@@��@����!t��� L
H
t�� L
H
u@@�@@@����$unit��� L
H
y�� L
H
}@@�@@@�@@@��� L
H
^@@@@����O�������	a [iter_vertices f gr] applies function [f] to every vertex of [gr], in no
     particular order. ��� J	�	��� K
.
G@@@@@@@��� L
H
J@�@���A�    �)edge_iter��� N

��� N

�@@@@A���@�����&Vertex!t��� N

��� N

�@@�@@@��@�����$Edge!t��� N

��� N

�@@�@@@����$unit��� N

��� N

�@@�@@@�@@@�@@@@��� N

�@@�@���Р*iter_edges��� R�� R"@��@���#src�����&Vertex!t�� S%.� S%6@@�@@@���#dst�����&Vertex!t�� S%>� S%F@@�@@@��@�����$Edge!t��* S%J�+ S%P@@�@@@����$unit��3 S%T�4 S%X@@�@@@�@@@��8 S%:@@@��: S%*@@@��@����!t��C S%]�D S%^@@�@@@����$unit��L S%b�M S%f@@�@@@�@@@��Q S%)@@@@���������	\ [iter_edges f gr] applies function [f] to every edge of [gr], in no
     particular order. ��^ P
�
��_ Q
�@@@@@@@��a R@�@���Р/iter_successors��j X/5�k X/D@��@����)edge_iter��t X/G�u X/P@@�@@@��@����!t�� X/T�� X/U@@�@@@��@������&Vertex%Label!t��� X/Y�� X/g@@�@@@����$unit��� X/k�� X/o@@�@@@�@@@�@@@�)@@@@����9�������	� [iter_successors f gr v] applies function [f] to every outgoing edge of
     [v] in [gr], in LIFO order. This function raises {!e Vertex_not_found} when
     [v] has not been added to [gr]. ��� Uhj�� W.@@@@@@@��� X/1@�@���Р1iter_predecessors��� ]:@�� ]:Q@��@����)edge_iter��� ]:T�� ]:]@@�@@@��@����!t��� ]:a�� ]:b@@�@@@��@������&Vertex%Label!t��� ]:f�� ]:t@@�@@@����$unit��� ]:x�� ]:|@@�@@@�@@@�@@@�)@@@@���(��������	� [iter_predecessors f gr v] applies function [f] to every incoming edge of
     [v] in [gr], in LIFO order. This function raises {!e Vertex_not_found} when
     [v] has not been added to [gr]. ��� Zqs�� \9@@@@@@@��� ]:<@�@���Р0initial_vertices��  a��� a��@��@����!t��
 a��� a��@@�@@@����$list�� a�
� a�@������&Vertex!t�� a�� a�	@@�@@@@�@@@�@@@@���c��������	] [initial_vertices gr] returns the list of all nodes of [gr] that have no
     predecessors. ��/ _~��0 `��@@@@@@@��2 a��@� @���Р1terminal_vertices��; etz�< et�@��@����!t��E et��F et�@@�@@@����$list��N et��O et�@������&Vertex!t��Y et��Z et�@@�@@@@�@@@�@@@@������������	\ [terminal_vertices gr] returns the list of all nodes of [gr] that have no
     successors. ��j c�k d`s@@@@@@@��m etv@� @@��pQw��q f��@@��sQw�@@��uQw�@@@��wQww@�@@