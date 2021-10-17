Caml1999N028����            6flap/src/compilers.mli����     H  	U  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������)Languages��=flap/src/common/compilers.mliG � ��G � �@A��G � �@���)ocaml.doc��������	] Compilers

    A compiler is a translator from a source language to a target
    language.

��Add�F � �@@@@@@@�@�����(Compiler��I � ��I � �@���������&Source��)K � ��*K � �@����(Language��1K � ��2K � �@�@@@��5K � �@�@������&Target��?L � ��@L � �@����(Language��GL � ��HL � �@�@@@��KL � �@�@���A�    �+environment��UQ���VQ��@@@@A@���R쐠�����	� It is convenient to maintain some information about a program
      along its compilation: an environment is meant to store that
      kind of information. ��cN � ��dPq�@@@@@@@��fQ��@@�@���Р3initial_environment��oR���pR��@��@����$unit��yR���zR��@@�@@@����+environment���R����R��@@�@@@�@@@@@���R��@�@���Р)translate���X����X��@��@�����&Source#ast���X����X��@@�@@@��@����+environment���X����X��@@�@@@��������&Target#ast���X����X��@@�@@@�����+environment���X����X��@@�@@@@�@@@�@@@�)@@@@����Z�������	� [translate source env] returns a [target] program semantically
      equivalent to [source] as a well as an enriched environment
      [env] that contains information related to the compilation of
      [source]. ���T����W��@@@@@@@���X��@�@@���I � ���Z��@@@���I � �@�@���Р(register���]PT��]P\@��@�����(Compiler���]Pg��]Po@@���]P_��]Pp@��@@@����$unit���]Pt��]Px@@�@@@�@@@@������������	K [register compiler] integrates [compiler] is the set of flap's compilers. ��\���\�O@@@@@@@��]PP@�@���Р#get��hGK�hGN@���%using����$list��#hGj�$hGn@������(Language��-hG`�.hGh@@��0hGX�1hGi@��@@@@�@@@��@�����(Language��>io|�?io�@@��Aiot�Bio�@��@@@��@�����(Language��Nio��Oio�@@��Qio��Rio�@��@@@�����(Compiler��\io��]io�@@��_io��`io�@��@@@�@@@�$@@@��fhGQ@@@@���b��������
  � [get ?using source target] returns a compiler from [source] to
    [target] built by composing flap's compilers. [using] is empty if
    not specified.

    [using] represents a list of languages that must appear in the
    compilation chain. It is useful to disambiguate between several
    choices when distinct compilation chains exist between two
    languages. If [using] is not precise enough to kill the
    ambiguity, flap issues a global error. ��s_zz�tgF@@@@@@@��vhGG@�@������(Identity���m��m'@�����!L���m)��m*@����(Language���m-��m5@�@@����(Compiler���m9��mA@�@@���m(@@����4�������	a There is an easy way to compile a language into itself:
    just use the identity function :-). ���k����l�@@@@@@@���m@�@@