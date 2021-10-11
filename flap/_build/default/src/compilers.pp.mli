Caml1999N029����            1src/compilers.mli����    H  	T  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������)Languages��8src/common/compilers.mliG � ��G � �@A��G � �@���)ocaml.doc��������	] Compilers

    A compiler is a translator from a source language to a target
    language.

��A__�F  �@@@@@@@�@�����(Compiler��I � ��I � �@���������&Source��)K � ��*K � �@����(Language��1K � ��2K � �@�@@@��5K � �@�@������&Target��?L � ��@L � �@����(Language��GL � ��HL � �@�@@@��KL � �@�@���A�    �+environment��UQ���VQ��@@@@A@���R쐠�����	� It is convenient to maintain some information about a program
      along its compilation: an environment is meant to store that
      kind of information. ��cN � ��dPl�@@@@@@@��fQ��@@�@���Р3initial_environment��oR���pR��@��@����$unit��yR���zR��@@�@@@����+environment���R����R��@@�@@@�@@@@@���R��@�@���Р)translate���X����X��@��@�����&Source#ast���X����X��@@�@@@��@����+environment���X����X��@@�@@@��������&Target#ast���X����X��@@�@@@�����+environment���X����X��@@�@@@@�@@@�@@@�)@@@@����Z�������	� [translate source env] returns a [target] program semantically
      equivalent to [source] as a well as an enriched environment
      [env] that contains information related to the compilation of
      [source]. ���T����W��@@@@@@@���X��@�@@���I � ���Z��@@@���I � �@�@���Р(register���]KO��]KW@��@�����(Compiler���]Kb��]Kj@@���]KZ��]Kk@��@@@����$unit���]Ko��]Ks@@�@@@�@@@@������������	K [register compiler] integrates [compiler] is the set of flap's compilers. ��\���\�J@@@@@@@��]KK@�@���Р#get��hBF�hBI@���%using����$list��#hBe�$hBi@������(Language��-hB[�.hBc@@��0hBS�1hBd@��@@@@�@@@��@�����(Language��>ijw�?ij@@��Aijo�Bij�@��@@@��@�����(Language��Nij��Oij�@@��Qij��Rij�@��@@@�����(Compiler��\ij��]ij�@@��_ij��`ij�@��@@@�@@@�$@@@��fhBL@@@@���b��������
  � [get ?using source target] returns a compiler from [source] to
    [target] built by composing flap's compilers. [using] is empty if
    not specified.

    [using] represents a list of languages that must appear in the
    compilation chain. It is useful to disambiguate between several
    choices when distinct compilation chains exist between two
    languages. If [using] is not precise enough to kill the
    ambiguity, flap issues a global error. ��s_uu�tgA@@@@@@@��vhBB@�@������(Identity���m��m"@�����!L���m$��m%@����(Language���m(��m0@�@@����(Compiler���m4��m<@�@@���m#@@����4�������	a There is an easy way to compile a language into itself:
    just use the identity function :-). ���k����l�@@@@@@@���m@�@@