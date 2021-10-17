Caml1999N028����            1flap/src/mint.mli����  j  �  
�  
>�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	= This module defines the integer type used in all languages. ��8flap/src/common/mint.mliA__�A_ a@@@@@@���A�    �!t��C c h�C c i@@@@A������%Int64!t��C c l�C c s@@�@@@@��C c c@@�@�����+��������2 {2 Basic Values} ��*E u u�+E u �@@@@@@���Р$zero��3G � ��4G � �@����!t��;G � ��<G � �@@�@@@@@��?G � �@�@���Р#one��HH � ��IH � �@����!t��PH � ��QH � �@@�@@@@@��TH � �@�@�����e��������; {2 Arithmetic Operations} ��dJ � ��eJ � �@@@@@@���Р#add��mL � ��nL � �@��@����!t��wL � ��xL � �@@�@@@��@����!t���L � ���L � �@@�@@@����!t���L � ���L � �@@�@@@�@@@�@@@@@���L � �@�@���Р#sub���M � ���M � �@��@����!t���M � ���M � �@@�@@@��@����!t���M � ���M � �@@�@@@����!t���M � ���M � �@@�@@@�@@@�@@@@@���M � �@�@���Р#mul���N � ���N � �@��@����!t���N � ��N �@@�@@@��@����!t���N ���N �@@�@@@����!t���N �
��N �@@�@@@�@@@�@@@@@���N � �@�@���Р#div���O��O@��@����!t���O��O@@�@@@��@����!t��	O�
O@@�@@@����!t��O �O!@@�@@@�@@@�@@@@@��O@�@�����)��������1 {2 Conversions} ��(Q##�)Q#9@@@@@@������*DoesNotFit��2S;E�3S;O@��@@��7S;;@@�@�@���Р&of_int��@UQU�AUQ[@��@����#int��JUQ^�KUQa@@�@@@����!t��SUQe�TUQf@@�@@@�@@@@@��XUQQ@�@���Р&to_int��aVgk�bVgq@��@����!t��kVgt�lVgu@@�@@@����#int��tVgy�uVg|@@�@@@�@@@@@��yVgg@�@���Р)of_string���X~���X~�@��@����&string���X~���X~�@@�@@@����!t���X~���X~�@@�@@@�@@@@@���X~~@�@���Р)to_string���Y����Y��@��@����!t���Y����Y��@@�@@@����&string���Y����Y��@@�@@@�@@@@@���Y��@�@������[�������3 {2 Serialization} ���[����[��@@@@@@���Р)t_of_sexp���]����]��@��@������'Sexplib$Sexp!t���]����]��@@�@@@����!t���]����]��@@�@@@�@@@@@���]��@�@���Р)sexp_of_t���^����^�@��@����!t��^��^�@@�@@@������'Sexplib$Sexp!t��^�
�^�@@�@@@�@@@@@��^��@�@�����&��������; {2 Low-level information} ��%`�&`:@@@@@@���Р-size_in_bytes��.b<@�/b<M@����#int��6b<P�7b<S@@�@@@@@��:b<<@�@@