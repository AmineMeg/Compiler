Caml1999M028����   &         	$flap/src/retrolixLivenessAnalysis.ml����  -$  �  �  N�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������
  �

   Liveness Analysis
   =================

   Liveness analysis is a *data flow* analysis. This means that it
   overapproximates the set of possible values that can get involved
   at each program point. The notion of "set of possible values" here
   should be understood in a very broad set as it usually characterize
   an abstract semantic notion like "the definitions that are
   available", "the variables that are alive", ... etc.

   To do that, the analysis works on the control-flow graph (CFG) (i)
   by defining a *transfer function* for each node that
   overapproximates the effects of the node instruction on the values
   ; (ii) by refining the overapproximation iteratively until a
   fixpoint is reached.

   More precisely, a transfer function is defined by two functions
   _IN_ and _OUT_ such that for each program point ℓ, IN(ℓ) is the set
   of possible values entering ℓ and OUT(ℓ) is the set of possible
   values leaving ℓ. If the _domain_ of the transfer function is equiped
   with a partial order with no infinite descending chain and if
   _IN_ and _OUT_ are monotonic with respect to this partial order,
   then by Kleene-Knaster-Tarski's theorem, there exist a fixpoint.

   For liveness analysis, the transfer functions are defined as follows:

   1. The analysis abstract domain contains sets of alive variables.
      The partial order is ⊆. Given that there is only a finite number
      of variables, there is no infinite descending chain.

   2. x ∈ IN(ℓ)
      if x ∈ (OUT(ℓ) \ DEF(ℓ)) ∨ (∃ ℓ' -> ℓ, x ∈ OUT(ℓ')) ∨ x ∈ USE(ℓ)

      x ∈ OUT(ℓ)
      if ∃ ℓ', ℓ -> ℓ', x ∈ IN(ℓ')

      where:
      - USE(ℓ) is the set of variables possibly read at ℓ.
      - DEF(ℓ) is the set of variables possibly written at ℓ.

      or equivalently, removing the redundancy between IN and OUT:

      IN(ℓ)  = USE(ℓ) ∪ (OUT(ℓ) ∖ DEF(ℓ))
      OUT(ℓ) = ⋃_{s ∈ successors (ℓ)} IN(s)

   Notice that OUT(ℓ) only depends on the values IN(s) obtained from
   its successors. This is a characteristic of *backward data flow
   analysis*. We will consider *forward* analyses is a forthcoming
   optimization.

��	-flap/src/retrolix/retrolixLivenessAnalysis.mlAtt�u��@@@@@@��������+RetrolixAST��w���w��@�@@A��w��@@�@��������-RetrolixUtils��x���x�	@�@@A��!x��@@�@���A�    �8liveness_analysis_result��+ @	}	��, @	}	�@@@��Р'live_in��3 A	�	��4 A	�	�@@�����(LabelMap!t��= A	�	��> A	�	�@������$LSet!t��H A	�	��I A	�	�@@�@@@@�@@@��M A	�	�@@�Р(live_out��S B	�	��T B	�	�@@�����(LabelMap!t��] B	�	��^ B	�	�@������$LSet!t��h B	�	��i B	�	�@@�@@@@�@@@��m B	�	�@@@A@���)ocaml.doc�������	m

   The result of the liveness analysis is a mapping from program
   points to pairs of sets of variables.

��{z	
	
�|	z	|@@@@@@@��~ @	}	}� C	�	�@@�@���@�����-empty_results��� E	�	��� E	�	�@�@@@������'live_in��� G	�	��� G	�
@�����(LabelMap%empty��� G	�
	�� G	�
@�@@@����(live_out��� H

�� H

%@�����(LabelMap%empty��� H

(�� H

6@�@@@@@��� F	�	��� I
8
;@@@@��� E	�	�@@�@���@�����1string_of_results��� K
=
A�� K
=
R@�@@@��@@���!r��� K
=
S�� K
=
T@�@@@�������&Printf'sprintf��� L
W
Y�� L
W
g@�@@@��@���/IN:
%s
OUT:
%s
��� M
h
m�� M
h
�@@��� M
h
l�� M
h
�@@@��@������.string_of_lmap��� N
�
��� N
�
�@�@@@��@������!r�� N
�
�� N
�
�@�@@@��'live_in��
 N
�
�� N
�
�@�
@@@@�� N
�
�� N
�
�@��@@@��@������.string_of_lmap�� O
�
�� O
�
�@�@@@��@������!r��) O
�
��* O
�
�@�@@@��(live_out��0 O
�
��1 O
�
�@�
@@@@��4 O
�
��5 O
�
�@��@@@@�\@@@�jA@@@��; K
=
=@@�@���@�����#def��G R�H R@�@@@��@@���!i��Q R�R R@�@@@������(failwith��\ S�] S@�@@@��@���:Student! This is your job!��f S�g S9@@��i S�j S:@@@@�@@@�A@@����	�������	? [def i] returns the variables defined by the instruction [i]. ��y Q
�
��z Q
�@@@@@@@��| R@@�@���@�����#use��� Vnr�� Vnu@�@@@��@@���!i��� Vnv�� Vnw@�@@@������(failwith��� Wz|�� Wz�@�@@@��@���:Student! This is your job!��� Wz��� Wz�@@��� Wz��� Wz�@@@@�@@@�A@@���@J�������	, [use i] returns the variables used by [i]. ��� U<<�� U<m@@@@@@@��� Vnn@@�@���@�����6instructions_of_labels��� \TX�� \Tn@�@@@��@@������@��� \Tq�� \Tr@@@����"is��� \Tt�� \Tv@�@@@@��� \Tp�� \Tw@��@@@����%block��� \Tz�� \T@@�@@@��� \To�� \T�@@@��@�����!m��� ]���� ]��@�@@@�  !�����(LabelMap�� ]��� ]��@�@@A@�������$List)fold_left�� ]��� ]��@�@@@��@��@@���!m�� ]���  ]��@�@@@��@@������!l��, ]���- ]��@�@@@����!i��5 ]���6 ]��@�@@@@��9 ]���: ]��@��@@@������#add��E ]���F ]��@�@@@��@����!l��P ]���Q ]��@�@@@��@����!i��[ ]���\ ]��@�@@@��@����!m��f ]���g ]��@�@@@@�%@@@�2A@@��l ]���m ]��@���p ]��
@@@��@����%empty��y ]���z ]��@�@@@��@����"is��� ]���� ]��@�@@@@�u@@@���� ]��@@@@��� ]��@@��@@���!l��� ^���� ^��@�@@@���������(LabelMap$find��� ^���� ^��@�@@@��@����!l��� ^���� ^��@�@@@��@����!m��� ^���� ^��@�@@@@�@@@������)Not_found��� ^���� ^��@@�@@@@�  ����%false��� ^�	�� ^�@@�@@@��� ^�@@@@��� ^��@@@��� ^��@@@�N	@@@��
A@@���lv�������	� [instructions_of_labels b] returns a function [instruction_of_label]
    such that [instruction_of_label l] returns the instruction labelled by
    [l] in the block [b]. ��� Y���� [7S@@@@@@@��� \TT@@�@���@�����1liveness_analysis��� r�� r@�@@@��@@���!b��� r�  r@�@@@�  ������(failwith�� s8:� s8B@�@@@��@���:Student! This is your job!�� s8D� s8^@@�� s8C� s8_@@@@�@@@����8liveness_analysis_result��" r�# r5@@�@@@��& rA@@�)A@@����Đ������
  � [liveness_analysis b] returns the liveness analysis of block [b].

   There are many ways to implement this analysis, but some
   implementations will converge faster than others! Let us recall
   what we said during the course:

   1. A backward analysis converges faster by traversing the CFG
      from exit to entry.

   2. A fixpoint computation is better implemented using a *work list*
      that maintains the nodes whose analysis may need a refinement.

   Typically, in the case of the liveness analysis, when considering a
   node [n], we compute [IN(n)] and if it has changed we must update
   [OUT(p)] for all predecessors of [n] and consider these predecessors
   on more time. (This again suggests a backward traversal of the CFG.)

��4 `�5 q @@@@@@@��7 r@@�@�����Hא������	 

   Some debugging functions.

��G vbb�H z��@@@@@@���@�����.debug_liveness��S |���T |��@�@@@��@@���!b��] |���^ |��@�@@@��@@���'results��g |���h |��@�@@@�  ���������'Options0get_verbose_mode��x }���y }��@�@@@��@����"()��� }���� }��@@�@@@@�@@@�  !�����5RetrolixPrettyPrinter��� }���� }��@�@@A@��@�����.get_decoration��� ~���� ~��@�@@@��@@���%space��� ~���� ~�@�@@@��@@���!m��� ~��� ~�@�@@@��@@���!l��� ~��� ~�@�@@@��@�����!s��� 	�� 	@�@@@���������(LabelMap$find��� 	�� 	(@�@@@��@����!l��� 	)�� 	*@�@@@��@����!m��� 	+�� 	,@�@@@@�@@@������)Not_found��� 	2�� 	;@@�@@@@�����$LSet%empty�� 	?� 	I@�@@@@�� 	@@@@�� 	@@������!@�� ���� ���@�@@@��@����"::�� �MT� �M�A�����������&PPrint&string��, �Ma@�@@@��@������!^��8 �Mh�9 �Mi@�@@@��@���"{ ��B �Md�C �Mf@@��E �Mc�F �Mg@@@��@������!^��Q �M{�R �M|@�@@@��@������.string_of_lset��^ �Mj�_ �Mx@�@@@��@����!s��i �My�j �Mz@�@@@@�@@@��@���" }��t �M~�u �M�@@��w �M}�x �M�@@@@�@@@@��{ �Mb�| �M�@��:@@@@�d@@@�����"[]�jA@�kA@@@�mlA@@��� �MSn@@@��@������%space��� ����� ���@�@@@�������� ����� ���A���������&PPrint%empty��� ���@�@@@�����-�A@�	A@@@�A@@��� ���@@@�����7��� ����� ���@@�@@@��� ����� ���@���� ���@@@@�=@@@��@@@�A@@�A@@�%	A@@@��� ~��@@��@�����+decorations��� ����� ���@�@@@������#pre��� ����� ���@������.get_decoration��� ����� ���@�@@@��@����'��� ����� ���@@�@@@��@������'results�� ���� ���@�@@@��'live_in��	 ����
 ��@�
@@@@�"@@@����$post�� �� �@������.get_decoration�� �� �#@�@@@��@����$true��( �$�) �(@@�@@@��@������'results��5 �)�6 �0@�@@@��(live_out��< �1�= �9@�
@@@@�#@@@@@��A ����B �:?@@@@��D ���@@��@�����!p��N �GO�O �GP@�@@@�������)ExtPPrint)to_string��[ �GS�\ �Gf@�@@@��@������%block��h �Gh�i �Gm@�@@@��@����+decorations��s �Gn�t �Gy@�@@@@��w �Gg�x �Gz@��@@@��@����!b��� �G{�� �G|@�@@@@�,@@@@��� �GK@@�������&Printf'eprintf��� ����� ���@�@@@��@���-Liveness:
%s
��� ����� ���@@��� ����� ���@@@��@����!p��� ����� ���@�@@@@�@@@�'�� ���@@@�m@@@��@@@�#�� ���@@@@��� }��@@@����'results��� ����� ���@�@@@�@@@�ZA@@�eA@@@��� |��@@�@���@�����'process��� ����� ���@�@@@��@@���!b��� ����� ���@�@@@������"|>��� ����� ���@�@@@��@������1liveness_analysis��� ����� ���@�@@@��@����!b��� ����� ���@�@@@@�@@@��@������.debug_liveness��
 ���� ���@�@@@��@����!b�� ���� ���@�@@@@�@@@@�)@@@�BA@@@�� ���@@�@@