Caml1999M029����            +src/flap.ml����  g�  S  N,  K������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������
  ? The main driver module.

    The role of this module is to have [flap] behave as the command
    line options say. In particular, these options determine:

    - if the compiler is run in interactive or batch mode.
    - what is the source language of the compiler.
    - what is the target language of the compiler.

��+src/flap.mlA@@�JBD@@@@@@��������'Options��P���P��@�@@A��P��@@�@���A�����*initialize��R���R��@�@@@��@@����"()��(R���)R��@@�@@@�  ������4initialize_languages��5S���6S��@�@@@��@������?S���@S��@@�@@@@�@@@�  ������2initialize_options��MT���NT��@�@@@��@����0��WT� �XT�@@�@@@@�@@@������1initialize_prompt��cU�dU@�@@@��@����F��mU�nU@@�@@@@�@@@�%@@@�>@@@�LA@@@��uR��@�����1initialize_prompt��}W �~W1@�@@@��@@����`���W2��W4@@�@@@�������)UserInput*set_prompt���X79��X7M@�@@@��@���&flap> ���X7O��X7U@@���X7N��X7V@@@@�@@@�A@@@���W@�����2initialize_options���ZX\��ZXn@�@@@��@@��������ZXo��ZXq@@�@@@�  �������2CommandLineOptions*initialize���[tv��[t�@�@@@��@��������[t���[t�@@�@@@@�@@@��������#not���\����\��@�@@@��@������!!���\����\��@�@@@��@�����#Sys+interactive���\��@�@@@@���\����\��@��@@@@�"@@@�������2CommandLineOptions%parse��\���\��@�@@@��@������\���\��@@�@@@@�@@@@��\��@@@�U@@@�eA@@@��ZXX	@�����4initialize_languages��&^���'^��@�@@@��@@����	��0^���1^��@@�@@@�  �������3HopixInitialization*initialize��?_���@_�@�@@@��@����"��I_��J_�@@�@@@@�@@@�  �������1ElfInitialization*initialize��Y`�Z`7@�@@@��@����<��c`8�d`:@@�@@@@�@@@�  �������5X86_64_Initialization*initialize��sa<>�ta<^@�@@@��@����V��}a<_�~a<a@@�@@@@�@@@�  �������6RetrolixInitialization*initialize���bce��bc�@�@@@��@����p���bc���bc�@@�@@@@�@@@�  �������3FopixInitialization*initialize���c����c��@�@@@��@��������c����c��@@�@@@@�@@@�������3HobixInitialization*initialize���d����d��@�@@@��@��������d����d��@@�@@@@�@@@�'@@@�B@@@�]@@@�x@@@��@@@��	A@@@���^��@@�a@���@�����5infer_source_language���hDH��hD]@�@@@��@@����ð��hD^��hD`@@�@@@���������'Options5is_input_filename_set���ich��ic�@�@@@��@����ܰ�ic��ic�@@�@@@@�@@@������"@@��k���k��@�@@@��@�����)Languages2get_from_extension��j���j��@�@@@��@�������(Filename)extension��+k���,k��@�@@@��@�������'Options2get_input_filename��:k���;k��@�@@@��@������Dk���Ek��@@�@@@@��Hk���Ik��@��@@@@�"@@@@�2@@@��������)Languages#get��Ym���Zm�@�@@@��@������3get_source_language��fm��gm�@�@@@��@����I��pm��qm�@@�@@@@��tm��um�@��@@@@� @@@��zice@@@��A@@���)ocaml.doc�������	i Infer source language from the extension of the input file or from the
    related command line option. ���f����g C@@@@@@@���hDD@@�@���@�����,get_compiler���q����q��@�@@@��@@����{���q����q��@@�@@@�  ��@�����/source_language���r����r��@�@@@������5infer_source_language���s����s��@�@@@��@��������s����s��@@�@@@@�@@@@���r��@@��@�����/target_language���u���u�@�@@@��������6is_target_language_set���v��v2@�@@@��@����İ��v3��v5@@�@@@@�@@@�������)Languages#get���w;A��w;N@�@@@��@������3get_target_language��w;P�w;c@�@@@��@������w;d�w;f@@�@@@@��w;O�w;g@��@@@@� @@@�����/source_language�� yqw�!yq�@�@@@��$v@@@@��&u��@@��@�����%using��0{���1{��@�@@@�������$List#map��={���>{��@�@@@��@�����)Languages#get��J{���K{��@�@@@��@�������'Options)get_using��Y{���Z{��@�@@@��@����<��c{���d{��@@�@@@@��g{���h{��@��@@@@�/@@@@��m{��@@�������)Compilers#get��x|���y|��@�@@@���%using�������|����|��@�@@@��@����/source_language���|����|��@�@@@��@����/target_language���|����|�@�@@@@�&@@@�2@@@�z@@@��@@@������)Compilers(Compiler���q����q��@@���q����q��@��@@@���q��A@@�A@@���8P�������	m Given the source language and the target language returns
    the right compiler (as a first-class module). ���o��pZ�@@@@@@@���q��)@@�*@���@�����$eval��� A���� A��@�@@@��@@���'runtime��� A���� A��@�@@@��@@���$eval��� A���� A��@�@@@��@@���%print��� A���� A��@�@@@��@�����#now��� B���� B��@�@@@�������$Unix,gettimeofday�� B��� B��@�@@@��@������ B��� B��@@�@@@@�@@@@�� B��@@��@��������'runtime��" C���# C�@�@@@����+observation��+ C��, C�@�@@@@�@@@������$eval��7 C��8 C�@�@@@��@����'runtime��B C��C C�@�@@@@�@@@@��G C��@@��@�����,elapsed_time��Q D!'�R D!3@�@@@������"-.��\ D!K�] D!M@�@@@��@�������$Unix,gettimeofday��k D!6�l D!G@�@@@��@����N��u D!H�v D!J@@�@@@@�@@@��@����#now��� D!N�� D!Q@�@@@@�@@@@��� D!#@@�  ���������'Options-get_benchmark��� EUZ�� EUo@�@@@��@����x��� EUp�� EUr@@�@@@@�@@@�������&Printf'eprintf��� Fx|�� Fx�@�@@@��@���&[%fs]
��� Fx��� Fx�@@��� Fx��� Fx�@@@��@����,elapsed_time��� Fx��� Fx�@�@@@@�@@@@��� EUW@@@�  ���������'Options0get_verbose_eval��� G���� G��@�@@@��@�������� G���� G��@@�@@@@�@@@������-print_endline��� H���� H��@�@@@��@������%print��� H���� H��@�@@@��@����'runtime�� H��� H��@�@@@��@����+observation�� H��� H��@�@@@@�� H��� H��@��@@@@�,@@@@�� G��@@@����'runtime��" I���# I�	@�@@@�@@@�^@@@��@@@��@@@�@@@�>A@@�I	A@@�T
A@@����ɐ������	� The evaluation function evaluates some code and prints the results
    into the standard output. It also benchmarks the time taken to
    evaluates the code, if asked. ��9~�: @��@@@@@@@��< A��@@�@���@�����0interactive_loop��H S	�	��I S	�	�@�@@@��@@����+��R S	�	��S S	�	�@@�@@@�  �������&Printf&printf��a U	�	��b U	�	�@�@@@��@���;        Flap version %s

%!��k U	�	��l U	�	�@@��n U	�	��o U	�	�@@@��@�����'Version&number��z U	�	��{ U	�	�@�@@@@�@@@�  ��(Compiler��� W	�

�� W	�
@���  ������,get_compiler��� W	�
�� W	�
&@�@@@��@����u��� W	�
'�� W	�
)@@�@@@@�@@@������)Compilers(Compiler��� W	�
,�� W	�
>@@�@@@�A@@��� W	�
�� W	�
?@@�  !�����(Compiler��� X
C
N�� X
C
V@�@@A��� X
C
I@@��@�����$read��� Z
[
a�� Z
[
e@�@@@��@@�������� Z
[
f�� Z
[
h@@�@@@�  ������1initialize_prompt��� [
k
o�� [
k
�@�@@@��@�������� [
k
��� [
k
�@@�@@@@�@@@��@�����!b��� \
�
��� \
�
�@�@@@�������&Buffer&create�� \
�
�� \
�
�@�@@@��@���"13@�� \
�
�� \
�
�@@@@�@@@@�� \
�
�@@��A�����$read�� ]
�
�� ]
�
�@�@@@��@@���$prev��$ ]
�
��% ]
�
�@�@@@��@�����!c��0 ^
�
��1 ^
�
�@�@@@�������)UserInput*input_char��= ^
�
��> ^
�
�@�@@@��@����%stdin��H ^
�
��I ^
�
�@�@@@@�@@@@��M ^
�
�@@��������!=��X _
�
��Y _
�
�@�@@@��@����!c��c _
�
��d _
�
�@�@@@��@���!
��m _
�
��n _
�
�@@��p _
�
��q _
�
�@@@@�@@@��������"<>��} ` �~ ` @�@@@��@����$prev��� ` �� ` @�@@@��@���!\��� ` �� ` @@��� ` �� ` @@@@�@@@�  �������&Buffer*add_string��� a)�� a:@�@@@��@����!b��� a;�� a<@�@@@��@����$prev��� a=�� aA@�@@@@�@@@�������&Buffer(contents��� bCM�� bC\@�@@@��@����!b��� bC]�� bC^@�@@@@�@@@��� ` �� c_h@��8@@@��  �������)UserInput*set_prompt��� dpz�� dp�@�@@@��@���&....> ��� dp��� dp�@@��� dp��� dp�@@@@�@@@������$read�� e��� e��@�@@@��@����!c�� e��� e��@�@@@@�@@@�� c_n� f��@��,@@@�� ` @@@��  �������&Buffer*add_string��$ h���% h��@�@@@��@����!b��/ h���0 h��@�@@@��@����$prev��: h���; h��@�@@@@�@@@������$read��F i���G i��@�@@@��@����!c��Q i���R i��@�@@@@�@@@��V g���W j��@��6@@@��[ _
�
�@@@�@@@�:A@@@��_ ]
�
�	@@������$read��h l�i l	@�@@@��@��� ��r l@@��t l
�u l@@@@�@@@�@@@�i@@@��@@@��A@@@��| Z
[
]@@��A�������$step��� o�� o!@�@@@��@��@�����&Target'runtime��� p"(�� p"6@@�@@@��@�����(Compiler+environment��� p":�� p"N@@�@@@��@�����&Source2typing_environment��� p"R�� p"k@@�@@@��������&Target'runtime��� qls�� ql�@@�@@@������(Compiler+environment��� ql��� ql�@@�@@@������&Source2typing_environment��� ql��� ql�@@�@@@@�@@@�+@@@�9@@@�G@@@�HA@@�XA@@�  ��@@���'runtime��� r���� r��@�@@@��@@���,cenvironment��� r���� r��@�@@@��@@���,tenvironment��� r���� r��@�@@@����������$read�� t��� t� @�@@@��@������ t�� t�@@�@@@@�@@@�����&+debug��! u	�" u	@@��$ u	�% u	@@@@�  �������'Options0set_verbose_mode��2 v!-�3 v!E@�@@@��@����$true��= v!F�> v!J@@�@@@@�@@@������$step��I wLX�J wL\@�@@@��@����'runtime��T wL]�U wLd@�@@@��@����,cenvironment��_ wLe�` wLq@�@@@��@����,tenvironment��j wLr�k wL~@�@@@@�%@@@�=@@@�����&-debug��v y���w y��@@��y y���z y��@@@@�  �������'Options0set_verbose_mode��� z���� z��@�@@@��@����%false��� z���� z��@@�@@@@�@@@������$step��� {���� {��@�@@@��@����'runtime��� {���� {��@�@@@��@����,cenvironment��� {���� {��@�@@@��@����,tenvironment��� {���� {��@�@@@@�%@@@�=@@@�����%input��� }��� }�	@�@@@@��@�����#ast��� ~�� ~ @�@@@��������(Compiler&Source,parse_string��� ~#�� ~?@�@@@��@����%input��� ~@�� ~E@�@@@@�@@@@��� ~@@��@�����,tenvironment��	  IY�	 Ie@�@@@���������'Options*get_unsafe��	 �hy�	 �h�@�@@@��@������	 �h��	 �h�@@�@@@@�@@@����,tenvironment��	# ����	$ ���@�@@@���������(Compiler&Source)typecheck��	3 ����	4 ���@�@@@��@����,tenvironment��	> ����	? ���@�@@@��@����#ast��	I ����	J ���@�@@@@�@@@��	N �hv@@@@��	P IU@@��@��������$cast��	] ��	^ �"@�@@@����,cenvironment��	f �$�	g �0@�@@@@�@@@�������(Compiler)translate��	t �3�	u �E@�@@@��@����#ast��	 �F�	� �I@�@@@��@����,cenvironment��	� �J�	� �V@�@@@@�@@@@��	� �@@�  ���������'Options0get_verbose_mode��	� �Zi�	� �Z�@�@@@��@����	���	� �Z��	� �Z�@@�@@@@�@@@������-print_endline��	� ����	� ���@�@@@��@�������&Target)print_ast��	� ����	� ���@�@@@��@����$cast��	� ����	� ���@�@@@@��	� ����	� ���@��@@@@�#@@@@��	� �Zf@@@��@�����'runtime��	� ����	� ���@�@@@�  !������(Compiler&Target��	� ����	� ���@�@@A@������$eval��	� ����	� ���@�@@@��@����'runtime��
 ����
 ��@�@@@��@��@@���!r��
 ���
 ��@�@@@������(evaluate��
 ���
 ��@�@@@��@����!r��
( ���
) ��@�@@@��@����$cast��
3 ���
4 ��@�@@@@�@@@��
8 ���
9 �� @���
< ��	@@@��@����0print_observable��
E ��!�
F ��1@�@@@@�N@@@�Z�
J �2?@@@@��
L ���@@������$step��
U �O[�
V �O_@�@@@��@����'runtime��
` �O`�
a �Og@�@@@��@����,cenvironment��
k �Oh�
l �Ot@�@@@��@����,tenvironment��
v �Ou�
w �O�@�@@@@�%@@@�/@@@��@@@��@@@�.@@@��@@@@��
� t��
@@@�����!e��
� ����
� ���@�@@@�������	���
� ����
� ���@�@@@��@�����#Sys+interactive��
� ���@�@@@@�@@@������%raise��
� ����
� ���@�@@@��@����!e��
� ����
� ���@�@@@@�@@@�������%Error%Error��
� ����
� ���@�������)positions��
� ����
� ���@�@@@����#msg��
� �� �
� ��@�@@@@��
� ����
� ��@��@@@�@@@@�  ������-output_string��
� ��
� �@�@@@��@����&stdout��
� � �
� �&@�@@@��@�������%Error+print_error�� �(� �9@�@@@��@����)positions�� �:� �C@�@@@��@����#msg�� �D� �G@�@@@@�� �'�  �H@��@@@@�9@@@������$step��, �JT�- �JX@�@@@��@����'runtime��7 �JY�8 �J`@�@@@��@����,cenvironment��B �Ja�C �Jm@�@@@��@����,tenvironment��M �Jn�N �Jz@�@@@@�%@@@�g@@@������+End_of_file��Z �{��[ �{�@@�@@@@�������'runtime��f ����g ���@�@@@�����,cenvironment��p ����q ���@�@@@�����,tenvironment��z ����{ ���@�@@@@��~ ���� ���@��@@@�����!e��� ����� ���@�@@@@�  ������-print_endline��� ����� ���@�@@@��@�������(Printexc-get_backtrace��� ����� ��@�@@@��@�������� ���� ��@@�@@@@��� ����� ��@��@@@@�"@@@�  ������-print_endline��� ��� �@�@@@��@�������(Printexc)to_string��� �!�� �3@�@@@��@����!e��� �4�� �5@�@@@@��� � �� �6@��@@@@�#@@@������$step��� �8B�� �8F@�@@@��@����'runtime��� �8G�� �8N@�@@@��@����,cenvironment�� �8O� �8[@�@@@��@����,tenvironment�� �8\� �8h@�@@@@�%@@@�Q@@@�~@@@@�� s��@@@�A@@�%	A@@�� r��@@@��@��������@�@@��@��������@�@@��@�������@|@@��������{zy@v@@������uts@p@@������onm@j@@@i@@h@@g@@f@@��5A@@@��E o7@@�  �������%Error/resume_on_error��R �np�S �n�@�@@@��@����5��\ �n��] �n�@@�@@@@�@@@������&ignore��h ����i ���@�@@@��@������$step��u ����v ���@�@@@��@�������&Target/initial_runtime��� ����� ���@�@@@��@����g��� ����� ���@@�@@@@��� ����� ���@��@@@��@�������(Compiler3initial_environment��� ����� ���@�@@@��@�������� ����� ���@@�@@@@��� ����� ���@��@@@��@�������&Source:initial_typing_environment��� ����� ��@�@@@��@�������� ���� �� @@�@@@@��� ����� ��!@��@@@@��� ����� �"%@��b@@@@�p@@@��@@@��@@@�_@@@��� X
C
E	@@@��� W	�	�@@@�@@@��A@@���
e}�������	D

   The interactive mode is a basic read-compile-eval-print loop.

��� N	W	W�� R	�	�@@@@@@@��� S	�	�@@�@���@�����1batch_compilation��� ����� ���@�@@@��@@����߰� ���� ���@@�@@@�  �������%Error-exit_on_error�� ���� ��@�@@@��@������� ���  ��@@�@@@@�@@@�  ��(Compiler��) � �* �(@���  ������,get_compiler��7 �0�8 �<@�@@@��@������A �=�B �?@@�@@@@�@@@������)Compilers(Compiler��N �B�O �T@@�@@@�A@@��S �+�T �U@@�  !�����(Compiler��^ �Yd�_ �Yl@�@@A��b �Y_@@��@�����.input_filename��l �pv�m �p�@�@@@�������'Options2get_input_filename��y �p��z �p�@�@@@��@����\��� �p��� �p�@@�@@@@�@@@@��� �pr@@��@�����+module_name��� ����� ���@�@@@�������(Filename.chop_extension��� ����� ���@�@@@��@����.input_filename��� ����� ���@�@@@@�@@@@��� ���@@��@�����#ast��� ����� ���@�@@@�������&Source.parse_filename��� ����� ��@�@@@��@����.input_filename��� ���� ��@�@@@@�@@@@��� ���@@�  ��������#not��� ��� �"@�@@@��@�������'Options*get_unsafe��� �$�� �6@�@@@��@����հ�� �7�� �9@@�@@@@��  �#� �:@��@@@@�"@@@�  !������(Compiler&Source�� �@D� �@S@�@@A@��@�����$tenv�� �V`� �Vd@�@@@������)typecheck��' �Vg�( �Vp@�@@@��@������:initial_typing_environment��4 �Vr�5 �V�@�@@@��@������> �V��? �V�@@�@@@@��B �Vq�C �V�@��@@@��@����#ast��N �V��O �V�@�@@@@�+@@@@��S �V\@@���������'Options.get_show_types��` ����a ���@�@@@��@����C��j ����k ���@@�@@@@�@@@������-print_endline��v ����w ���@�@@@��@������8print_typing_environment��� ����� ���@�@@@��@����$tenv��� ����� ���@�@@@@��� ����� ���@��@@@@��� ����� ���@��%@@@@��� ���@@@�K@@@���� � @@@@��� �@@@��@��������$cast��� ��� �@�@@@��@��� ��� �@@@@�	@@@�  !�����(Compiler��� ��� �@�@@A@������)translate��� �!�� �*@�@@@��@����#ast��� �+�� �.@�@@@��@������3initial_environment��� �0�� �C@�@@@��@����ư�� �D�� �F@@�@@@@��� �/�� �G@��@@@@�+@@@�7�� �H@@@@��� �	@@��@�����/output_filename�� �LR� �La@�@@@����������� �d�� �d�@�@@@��@�������'Options/get_output_file�� �dk� �d�@�@@@��@������( �d��) �d�@@�@@@@�@@@��@��� ��3 �d�@@��5 �d��6 �d�@@@@�@@@��@�����/output_filename��A ����B ���@�@@@������!^��L ����M ���@�@@@��@����+module_name��W ����X ���@�@@@��@�����&Target)extension��d ����e ���@�@@@@�@@@@��i ���@@��������	��s ����t ���@�@@@��@����/output_filename��~ ���� ���@�@@@��@����.input_filename��� ����� ���@�@@@@�@@@������!^��� ���� ��@�@@@��@����+module_name��� ���� ��@�@@@��@������!^��� ��$�� ��%@�@@@��@�����&Target)extension��� ���� ��#@�@@@��@���*-optimized��� ��'�� ��1@@��� ��&�� ��2@@@@�@@@@�+@@@�����/output_filename��� �>F�� �>U@�@@@��� ���@@@�o@@@��������'Options/get_output_file��� �_e�� �_|@�@@@��@����ư�� �_}�� �_@@�@@@@�@@@��� �dh@@@@��� �LN@@�  ���������'Options0get_verbose_mode�� ���� ���@�@@@��@������ ���� ���@@�@@@@�@@@������-output_string�� ���� ���@�@@@��@����&stdout��$ ����% ���@�@@@��@������!^��1 ����2 ���@�@@@��@�������&Target)print_ast��@ ����A ���@�@@@��@����$cast��K ����L ���@�@@@@�@@@��@���!
��V ����W ���@@��Y ����Z ���@@@@��\ ����] ���@�� @@@@�H@@@@��b ���@@@�  ��������#not��o ����p ���@�@@@��@������"||��| ���} ��@�@@@��@�������'Options,get_dry_mode��� ����� ��@�@@@��@����n��� ���� ��@@�@@@@�@@@��@������
K��� ���� ��@�@@@��@����/output_filename��� ��	�� ��@�@@@��@����.input_filename��� ���� ��)@�@@@@�@@@@��� ����� ��*@��6@@@@�S@@@��@�����$cout��� �2:�� �2>@�@@@������(open_out��� �2A�� �2I@�@@@��@����/output_filename��� �2J�� �2Y@�@@@@�@@@@��� �26@@�  ������-output_string��� �]a�� �]n@�@@@��@����$cout��� �]o�� �]s@�@@@��@�������&Target)print_ast�� �]u� �]�@�@@@��@����$cast�� �]�� �]�@�@@@@�� �]t� �]�@��@@@@�.@@@�  ������)close_out��) ����* ���@�@@@��@����$cout��4 ����5 ���@�@@@@�@@@�������&Target1executable_format��B ����C ���@�@@@��������&ExtStd$Unix-add_exec_bits��Q ����R ���@�@@@��@����/output_filename��\ ����] ���@�@@@@�@@@@��a ���@@@�:�c ���@@@�t@@@��f ��0�g ���@���@@@@��k ���@@@���������'Options0get_running_mode��x ����y ��@�@@@��@����[��� ���� ��@@�@@@@�@@@�  !������(Compiler&Target��� ���� ��+@�@@A@������&ignore��� �.2�� �.8@�@@@��@����@�����%print��� �EQ�� �EV@�@@@���������'Options0get_verbose_eval��� �Yf�� �Y~@�@@@��@�������� �Y�� �Y�@@�@@@@�@@@����0print_observable��� ����� ���@�@@@���@@�@��� ����� ���@@@��@@�@��� ����� ���@@@��� ��� ���@@��� ����� ���@@@�A@@��� ���@@@��� �Yc@@@@��� �EM@@������$eval��� ����� ���@�@@@��@������/initial_runtime�� ���� ���@�@@@��@������ ���� ���@@�@@@@�� ���� ���@��@@@��@��@@���!r�� ����  �� @�@@@������(evaluate��* ���+ ��@�@@@��@����!r��5 ���6 ��@�@@@��@����$cast��@ ���A ��@�@@@@�@@@��E ����F ��@���I ���	@@@��@����%print��R ���S ��@�@@@@�_@@@�i@@@�����!e��^ �&0�_ �&1@�@@@@�  ������-print_endline��k �5?�l �5L@�@@@��@�������(Printexc-get_backtrace��z �5N�{ �5d@�@@@��@����]��� �5e�� �5g@@�@@@@��� �5M�� �5h@��@@@@�"@@@�  ������-print_endline��� �jt�� �j�@�@@@��@�������(Printexc)to_string��� �j��� �j�@�@@@��@����!e��� �j��� �j�@�@@@@��� �j��� �j�@��@@@@�#@@@������$exit��� ����� ���@�@@@��@���!1@��� ����� ���@@@@�@@@�9@@@�f@@@@��� �.9�� ���@���� �;A
@@@@�<@@@�H�� ���@@@@��� ���@@@�r@@@�|@@@��@@@��@@@�@@@@�	@@@�4
@@@�\@@@��� �Y[@@@��� �@@@��@@@��A@@���n��������
  r

   In batch mode, the compiler loads a file written in the source
   language and produces a file written in the target language.

   The filename of the output file is determined by the basename
   of the input filename concatenated with the extension of the
   target language.

   If the running mode is set, the compiler will also interpret
   the compiled code.

��� �ff�� ���@@@@@@@��� ���!@@�"@���@�����$main�� ���� ��@�@@@�  ������*initialize�� �� �@�@@@��@������� �� �@@�@@@@�@@@��������(get_mode��* ��+ �'@�@@@��@������4 �(�5 �*@@�@@@@�@@@���@��< �06�= �07@@@�������[��F �0=�G �0>@�@@@��@�����#Sys+interactive��S �0M@�@@@@�@@@����4��[ �0Q�\ �0S@@�@@@������+Interactive��f �TZ�g �Te@@�@@@@������0interactive_loop��q �Ti�r �Ty@�@@@��@����T��{ �Tz�| �T|@@�@@@@�@@@������%Batch��� �}��� �}�@@�@@@@������1batch_compilation��� �}��� �}�@�@@@��@����u��� �}��� �}�@@�@@@@�@@@@��� �@@@��@@@���'?�������1 -------------- *��� ����� ���@@@@@@@��� ���@@�@@