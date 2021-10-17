Caml1999N028����   "      
   	 flap/src/hopixSyntacticSugar.mli����  �  w  �  ;�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������(Position��	&flap/src/hopix/hopixSyntacticSugar.mliAmr�Amz@A��Amm@@�@������(HopixAST��B{ @�B{ H@A��B{{@@�@���Р0fresh_identifier��F � ��F � �@��@����$unit��$F � ��%F � �@@�@@@����*identifier��-F � ��.F � �@@�@@@�@@@@���)ocaml.docǐ������	R [fresh_identifier ()] returns a new fresh identifier each time it
    is called. ��>D J J�?E � �@@@@@@@��AF � �@�@���Р6make_multi_assignments��JR���KR��@��@����$list��TS���US��@�����'located��]S���^S��@�����*expression��fS���gS��@@�@@@@�@@@@�@@@��@����$list��sS���tS��@�����'located��|S���}S��@�����*expression���S����S��@@�@@@@�@@@@�@@@����*expression���S����S��@@�@@@�@@@�/@@@@���d*�������	� [make_multi_assignments [e1; ...; eN] [f1; ...; fN]] returns
    an expression of the form:
    [
    let x_1 = f1 in
    ...
    let x_N = fN in
    e1 := x1;
    ...
    eN := xN
    ] ���H � ���Q��@@@@@@@���R��@�@���Р8make_delayed_computation���ZJN��ZJf@��@����'located���ZJt��ZJ{@�����*expression���ZJi��ZJs@@�@@@@�@@@����*expression���ZJ��ZJ�@@�@@@�@@@@����c�������	T [make_delayed_computation e] returns an expression of the form:

    [ \() => e ]

���U����YGI@@@@@@@���ZJJ@�@@