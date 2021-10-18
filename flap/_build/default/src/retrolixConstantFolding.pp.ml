Caml1999M028����         	   >src/retrolixConstantFolding.ml����  {    �  ?�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@����������+RetrolixAST��	'src/retrolix/retrolixConstantFolding.mlAns�An~@�@@A��Ann@@�@��������-RetrolixUtils��B D�B Q@�@@A��B@@�@���@�����)activated��!D S W�"D S `@�@@@������#ref��,D S c�-D S f@�@@@��@����%false��7D S g�8D S l@@�@@@@�@@@@��<D S S@@�@������&Source��FF n u�GF n {@����(Retrolix��NF n ~�OF n �@�@@@��RF n n@�@���@�����)shortname��^H � ��_H � �@�@@@���"cf��fH � ��gH � �@@��iH � ��jH � �@@@@��lH � �@@�@���@�����(longname��xJ � ��yJ � �@�@@@���0constant folding���J � ���J � �@@���J � ���J � �@@@@���J � �@@�@�����*ocaml.text"�������9 {2 The Analysis Itself} ���L � ���L � �@@@@@@������.ConstantDomain���N � ���N � �@�����@�����0global_variables���P
��P@�@@@������#ref���P��P @�@@@��@����"[]���P!��P#@@�@@@@�@@@@���P@@�@������!D���R%0��R%1@�����A�    �!t���TAN��TAO@@@��Р#Bot���UR^��URa@�@@���UR\@@�Р%Const���Vbn��Vbs@�������+RetrolixAST'literal���Vbw��Vb�@@�@@@@@��Vbl@@�Р#Top��W���	W��@�@@��W��@@@A@@��TAI@@�@���@�����%print��Y���Y��@�@@@��@@���!x��$Y���%Y��@�@@@������!x��/Z���0Z��@�@@@������#Bot��:[���;[��@@�@@@@�������&PPrint&string��G\���H\��@�@@@��@���#Bot��Q\���R\��@@��T\���U\��@@@@�@@@������%Const��_]�	�`]�@����!l��g]��h]�@�@@@�@@@@�������5RetrolixPrettyPrinter'literal��u^!�v^>@�@@@��@����!l���^?��^@@�@@@@�@@@������#Top���_AM��_AP@@�@@@@�������&PPrint&string���`Ta��`Tn@�@@@��@���#Top���`Tp��`Ts@@���`To��`Tt@@@@�@@@@���Z��@@@��A@@@���Y��@@�@���@�����%equal���bv���bv�@�@@@�����&Stdlib!=���c����c��@�@@@@���bv~@@�@���@�����'compare���e����e��@�@@@�����&Stdlib'compare���f����f��@�@@@@���e��@@�@���@�����"le���h����h��@�@@@��@@���!x���h����h��@�@@@��@@���!y��h���h��@�@@@������(failwith��i���i��@�@@@��@���:Student! This is your job!��i���i�@@��i���i�@@@@�@@@�A@@�'A@@@��!h��@@�@���@�����#bot��-k%�.k(@�@@@������(failwith��8l+8�9l+@@�@@@��@���:Student! This is your job!��Bl+B�Cl+\@@��El+A�Fl+]@@@@�@@@@��Ik!@@�@���@�����#lub��Un_k�Vn_n@�@@@��@@���!x��_n_o�`n_p@�@@@��@@���!y��in_q�jn_r@�@@@������(failwith��tou��uou�@�@@@��@���:Student! This is your job!��~ou��ou�@@���ou���ou�@@@@�@@@�A@@�'A@@@���n_g@@�@@���S4:��p��@@@���R%)@�@������"DV���r����r��@�������5RetrolixDataflowUtils1PerLValueProperty���r����r��@�@@����!D���r����r��@�@@���r��@@@���r��@�@��������"DV���s����s��@�@@���s��@@�@���@�����=clobber_registers_and_globals���w����w��@�@@@��@@���!x���w����w��@�@@@������(failwith���x����x��@�@@@��@���:Student! This is your job!���x����x��@@���x����x��@@@@�@@@�A@@@���w��@@�@���@�����(transfer��{���{�@�@@@��@@������#lab��{��{�
@�@@@����$insn��{��{�@�@@@@��{��{�@��@@@��@@���!x��&{��'{�@�@@@������(failwith��1|�2|%@�@@@��@���:Student! This is your job!��;|'�<|A@@��>|&�?|B@@@@�@@@�A@@�(A@@@��D{��@@�@@��GO � ��H}CH@@@��JN � �@�@������0ConstantAnalysis��TJQ�UJa@�������7RetrolixDataflowEngines'Default��`Jd�aJ�@�@@����.ConstantDomain��iJ��jJ�@�@@��mJ�@@@��oJJ@�@������
�������	! {2 Putting Everything Together} �� A���� A��@@@@@@���@�����%error��� C���� C��@�@@@��@@���#lab��� C���� C��@�@@@��@@���#msg��� C���� C��@�@@@�  �������&Printf'eprintf��� D���� D��@�@@@��@���:%sundefined behavior (%s)
��� D���� D��@@��� D���� D��@@@��@�������)ExtPPrint)to_string��� E �� E @�@@@��@�������5RetrolixPrettyPrinter%label��� E �� E 5@�@@@��@���!0@��� E 6�� E 7@@@@��� E �� E 8@��@@@��@����#lab��� E 9�� E <@�@@@@��� E �� E =@��0@@@��@����#msg�� F>B� F>E@�@@@@�W@@@������$exit�� GGI� GGM@�@@@��@���!1@�� GGN� GGO@@@@�@@@�m@@@�}A@@��A@@@�� C��@@�@���@�����'analyze��* IQU�+ IQ\@�@@@��@@��������&locals��9 IQ_�: IQe@�@@@��@��? IQg�@ IQh@@@@��B IQ^�C IQi@��@@@�%block��I IQm�J IQr@��L IQ]�M IQs@��@@@������(failwith��X Jv{�Y Jv�@�@@@��@���:Student! This is your job!��b Jv��c Jv�@@��e Jv��f Jv�@@@@�@@@�A@@@��j IQQ@@�@���@�����'rewrite��v M���w M��@�@@@��@@���#sol��� M���� M��@�@@@��@@������#lab��� M���� M��@�@@@����$insn��� M���� M��@�@@@@��� M���� M��@��@@@��@������@��� N���� N��@@@����!r��� N���� N��@�@@@@�@@@������#sol��� N���� N��@�@@@��@����#lab��� N���� N��@�@@@@�@@@@��� N��@@������(failwith��� O���� O��@�@@@��@���;Students! This is your job!��� O���� O�@@��� O���� O�@@@@�@@@�@@@�LA@@�gA@@@��� M��@@�@���@�����)translate��� Q
�� Q@�@@@��@@���!p��� Q�� Q@�@@@�  ������":=�� R:� R<@�@@@��@�����.ConstantDomain0global_variables�� R� R9@�@@@��@�������-RetrolixUtils0global_variables��' R=�( R[@�@@@��@����!p��2 R\�3 R]@�@@@@�@@@@�@@@�������-RetrolixUtils0transform_blocks��A S_a�B S_@�@@@��@����'analyze��L S_��M S_�@�@@@��@����'rewrite��W S_��X S_�@�@@@��@����!p��b S_��c S_�@�@@@@�%@@@�O@@@�jA@@@��i Q@@�@@