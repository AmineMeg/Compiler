Caml1999M028����            4flap/src/retrolix.ml����  
�  c  �  j�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	$ The retrolix programming language. ��=flap/src/retrolix/retrolix.mlAdd�Ad M@@@@@@������#AST��C O V�C O Y@����+RetrolixAST��C O \�C O g@�@@@��C O O@�@���@�����$name��#E i m�$E i q@�@@@���(retrolix��+E i u�,E i }@@��.E i t�/E i ~@@@@��1E i i@@�@���A�    �#ast��;G � ��<G � �@@@@A������+RetrolixAST!t��FH � ��GH � �@@�@@@@��JG � �@@�@���@�����%parse��VJ � ��WJ � �@�@@@��@@���*lexer_init��`J � ��aJ � �@�@@@��@@���%input��jJ � ��kJ � �@�@@@�������1SyntacticAnalysis'process��wK � ��xK � �@�@@@���*lexer_init�������L � ���L � �@�@@@���)lexer_fun�����-RetrolixLexer%token���M � ���M �	@�@@@���*parser_fun�����.RetrolixParser'program���N
��N
0@�@@@���%input�������O16��O1;@�@@@@�:@@@�HA@@�SA@@@���J � �@@�@���@�����.parse_filename���Q=A��Q=O@�@@@��@@���(filename���Q=P��Q=X@�@@@������%parse���R[]��R[b@�@@@��@�����&Lexing,from_channel���R[c��R[v@�@@@��@������'open_in���R[x��R[@�@@@��@����(filename���R[���R[�@�@@@@���R[w��R[�@��@@@@�.@@@�:A@@@��Q==@@�@���@�����)extension��T���T��@�@@@���).retrolix��U���U��@@��U���U��@@@@��T��@@�@���@�����1executable_format��+W���,W��@�@@@����%false��4X���5X��@@�@@@@��8W��@@�@���@�����,parse_string��DZ���EZ��@�@@@������%parse��O[���P[��@�@@@��@�����&Lexing+from_string��\[���][��@�@@@@�@@@@��aZ��@@�@���@�����)print_ast��m]���n]�@�@@@��@@���#ast��w]��x]�@�@@@�������)ExtPPrint)to_string���^��^#@�@@@��@�����5RetrolixPrettyPrinter'program���^$��^A@�@@@��@����#ast���^B��^E@�@@@@�@@@�*A@@@���]��@@�@��������3RetrolixInterpreter���`GO��`Gb@�@@���`GG@@�@��������3RetrolixTypechecker���ack��ac~@�@@���acc@@�@@