Caml1999N028����            -src/error.mli����  X  �  
  	|�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	J This module provides a uniform way of reporting (located) error message. ��7src/utilities/error.mliA^^�A^ m@@@@@@���Р-exit_on_error��
E � ��E � �@��@����$unit��E � ��E � �@@�@@@����$unit��E � ��E �@@�@@@�@@@@���)ocaml.doc��������	o [exit_on_error ()] forces the program to stop if an error is encountered.
    (This is the default behavior.) ��.C o o�/D � �@@@@@@@��1E � �@�@���Р/resume_on_error��:Ipt�;Ip�@��@����$unit��DIp��EIp�@@�@@@����$unit��MIp��NIp�@@�@@@�@@@@���0퐠�����	e [resume_on_error ()] makes the program throw the exception {!Error}
    if an error is encountered. ��]G�^HMo@@@@@@@��`Ipp@�@������%Error��jK���kK��@�������$list��uK���vK��@������(Position!t���K����K��@@�@@@@�@@@�����&string���K����K��@@�@@@@@���K��@@)@�@���Р+print_error���N���N�@��@����$list���N���N�@������(Position!t���N���N�@@�@@@@�@@@��@����&string���N�"��N�(@@�@@@����&string���N�,��N�2@@�@@@�@@@�@@@@����c�������	7 [print_error positions msg] formats an error message. ���M����M��@@@@@@@���N��@�@���Р%error���R����R��@��@����&string���R����R��@@�@@@��@�����(Position!t���R����R��@@�@@@��@����&string��R���R��@@�@@@��!a��R���	R��@@@�
@@@�@@@�$@@@@������������	V [error k p msg] prints [msg] with [k] as a message prefix and stops
    the program. ��P44�Q|�@@@@@@@��R��@�@���Р&error2��%U�&U@��@����&string��/U�0U@@�@@@��@�����(Position!t��<U�=U$@@�@@@��@�����(Position!t��IU(�JU2@@�@@@��@����&string��TU6�UU<@@�@@@��!a��[U@�\UB@@@�
@@@�@@@�$@@@�2@@@@���@��������	; [error2 k p1 p2 msg] prints two positions instead of one. ��mT���nT�@@@@@@@��pU@�@���Р&errorN��yXw{�zXw�@��@����&string���Xw���Xw�@@�@@@��@����$list���Xw���Xw�@������(Position!t���Xw���Xw�@@�@@@@�@@@��@����&string���Xw���Xw�@@�@@@��!a���Xw���Xw�@@@�
@@@�@@@�.@@@@����M�������	- [errorN k ps msg] prints several positions. ���WDD��WDv@@@@@@@���Xww@�@���Р,global_error���\��\ @��@����&string���\#��\)@@�@@@��@����&string���\-��\3@@�@@@��!a���\7��\9@@@�
@@@�@@@@������������	[ [global_error k msg] prints [msg] with [k] as a message prefix and stops
    the program. ���Z����[�@@@@@@@���\@�@@