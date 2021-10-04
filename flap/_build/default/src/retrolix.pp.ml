Caml1999M028����            /src/retrolix.ml����  
�  c  �  j�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	$ The retrolix programming language. ��8src/retrolix/retrolix.mlA__�A_ H@@@@@@������#AST��C J Q�C J T@����+RetrolixAST��C J W�C J b@�@@@��C J J@�@���@�����$name��#E d h�$E d l@�@@@���(retrolix��+E d p�,E d x@@��.E d o�/E d y@@@@��1E d d@@�@���A�    �#ast��;G { ��<G { �@@@@A������+RetrolixAST!t��FH � ��GH � �@@�@@@@��JG { {@@�@���@�����%parse��VJ � ��WJ � �@�@@@��@@���*lexer_init��`J � ��aJ � �@�@@@��@@���%input��jJ � ��kJ � �@�@@@�������1SyntacticAnalysis'process��wK � ��xK � �@�@@@���*lexer_init�������L � ���L � �@�@@@���)lexer_fun�����-RetrolixLexer%token���M � ���M �@�@@@���*parser_fun�����.RetrolixParser'program���N��N+@�@@@���%input�������O,1��O,6@�@@@@�:@@@�HA@@�SA@@@���J � �@@�@���@�����.parse_filename���Q8<��Q8J@�@@@��@@���(filename���Q8K��Q8S@�@@@������%parse���RVX��RV]@�@@@��@�����&Lexing,from_channel���RV^��RVq@�@@@��@������'open_in���RVs��RVz@�@@@��@����(filename���RV{��RV�@�@@@@���RVr��RV�@��@@@@�.@@@�:A@@@��Q88@@�@���@�����)extension��T���T��@�@@@���).retrolix��U���U��@@��U���U��@@@@��T��@@�@���@�����1executable_format��+W���,W��@�@@@����%false��4X���5X��@@�@@@@��8W��@@�@���@�����,parse_string��DZ���EZ��@�@@@������%parse��O[���P[��@�@@@��@�����&Lexing+from_string��\[���][��@�@@@@�@@@@��aZ��@@�@���@�����)print_ast��m]���n]�@�@@@��@@���#ast��w]��x]�@�@@@�������)ExtPPrint)to_string���^	��^	@�@@@��@�����5RetrolixPrettyPrinter'program���^	��^	<@�@@@��@����#ast���^	=��^	@@�@@@@�@@@�*A@@@���]��@@�@��������3RetrolixInterpreter���`BJ��`B]@�@@���`BB@@�@��������3RetrolixTypechecker���a^f��a^y@�@@���a^^@@�@@