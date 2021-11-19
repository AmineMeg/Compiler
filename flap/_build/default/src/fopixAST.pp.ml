Caml1999M030����            /src/fopixAST.ml����  �  �  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	. The abstract syntax tree for Fopix programs. ��5src/fopix/fopixAST.mlA\\�A\ O@@@@@@�������������
  J

   Fopix is a first order language.

   Like the C language, Fopix only allows toplevel functions. These
   functions can be called directly by using their names in the source
   code or indirectly by means of (dynamically computed) function
   pointers. Toplevel functions are mutually recursive.

   As in C, the control-flow can be structured by loops,
   conditionals and switchs.

   Contrary to C, Fopix does not make a distinction between statements
   and expressions. Besides, the notion of variable is similar to the
   one of functional language: variables are immutable.

��C Q Q�S��@@@@@@���A�    �'program��U���U��@@@@A�����$list��$U���%U��@�����*definition��-U���.U��@@�@@@@�@@@@��2U��@�    �*definition��8W���9W��@@@��Р+DefineValue��@Y���AY��@������*identifier��JY��KY�@@�@@@�����*expression��TY��UY�@@�@@@@@��XY��@���)ocaml.doc��������; [def f (x1, ..., xN) = e] ��fZ�gZ;@@@@@@@�Р.DefineFunction��m[<@�n[<N@������3function_identifier��w[<T�x[<g@@�@@@�����'formals���[<j��[<q@@�@@@�����*expression���[<t��[<~@@�@@@@@���[<>@���7,�������6 [external f : arity] ���\���\�@@@@@@@�Р0ExternalFunction���]����]��@������3function_identifier���]����]��@@�@@@�����#int���]����]��@@�@@@@@���]��@@@A@@���W��@�    �*expression���_����_��@@@��Р'Literal���a!%��a!,@������'literal���a!0��a!7@@�@@@@@���a!#@����v�������4 [x, y, z, ginette] ���b8:��b8S@@@@@@@�Р(Variable���cTX��cT`@������*identifier���cTd��cTn@@�@@@@@���cTV@������������2 [val x = e1; e2] ��doq�	do�@@@@@@@�Р&Define��e���e��@������*identifier��e���e��@@�@@@�����*expression��#e���$e��@@�@@@�����*expression��-e���.e��@@�@@@@@��1e��@����ΐ������2 [f (e1, .., eN)] ��>f���?f��@@@@@@@�Р'FunCall��Eg���Fg��@������3function_identifier��Og���Pg��@@�@@@�����$list��Yg��Zg�
@�����*expression��bg���cg�@@�@@@@�@@@@@��gg��@����������< [call e with (e1, .., eN)] ��th�uh.@@@@@@@�Р.UnknownFunCall��{i/3�|i/A@������*expression���i/E��i/O@@�@@@�����$list���i/]��i/a@�����*expression���i/R��i/\@@�@@@@�@@@@@���i/1@���E:�������5 [while e do e' end] ���jbd��jb~@@@@@@@�Р%While���k���k�@������*expression���k���k�@@�@@@�����*expression���k���k�@@�@@@@@���k�@���qf�������< [if e then e1 else e2 end] ���l����l��@@@@@@@�Р*IfThenElse���m����m��@������*expression���m����m��@@�@@@�����*expression���m����m��@@�@@@�����*expression���m����m��@@�@@@@@���m��@������������	Q [switch e in c1 | c2 | .. | cN orelse e_default end]
      where [ci := ! | e]. ��n��o:W@@@@@@@�Р&Switch��pX\�pXb@������*expression��pXf�pXp@@�@@@�����%array��'pX��(pX�@�����&option��0pX~�1pX�@�����*expression��9pXs�:pX}@@�@@@@�@@@@�@@@�����&option��EpX��FpX�@�����*expression��NpX��OpX�@@�@@@@�@@@@@��SpXZ@@@A@@��U_��@�    �'literal��[r���\r��@@@��Р$LInt��cs���ds��@�������$Mint!t��os���ps��@@�@@@@@��ss��@@�Р'LString��yt���zt��@������&string���t����t��@@�@@@@@���t��@@�Р%LChar���u����u��@������$char���u����u��@@�@@@@@���u��@@�Р$LFun���v����v��@������3function_identifier���v����v�@@�@@@@@���v��@@@A@@���r��@�    �*identifier���x��x @@@��Р"Id���y#'��y#)@������&string���y#-��y#3@@�@@@@@���y#%@@@A@@���x@�    �'formals���{59��{5@@@@@A�����$list���|CR��|CV@�����*identifier���|CG��|CQ@@�@@@@�@@@@���{55@�    �3function_identifier���~X\��~Xo@@@��Р%FunId���rv��r{@������&string��r�r�@@�@@@@@��rt@@@A@@��
~XX@�    �!t�� A��� A��@@@@A�����'program�� A��� A��@@�@@@@�� A��@@��@@