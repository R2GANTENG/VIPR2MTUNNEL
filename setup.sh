#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��� ����0������������r��T�  0 @ `+����+}�]��܀F�v�{K�G��G�,���p��f0������u�^붖�*�͔��j������;:v��4�7mm+jk^���J�Z�=��]�B�e��о�&��&�d��T�%4�0MOS�I�yOS���i� �h&
m&jj56�I��2P�=#F�S�Pz��4 �F�M5)�5G��zz�ji�  4=@  �  ��L�FC)驪y�z�����O&�M���ڀ2   J	50L����y	���$��������hшh  4 A"B &�M OBh�6�=Lښji�h �Gꞣ#F�O*p@�U)!�Pc"����\}�BR���.]�s��������9k�k�<���lPC�lD?2�$!L�
/�b2 ��FO���`���9s��g9�]n�0�*�*�2b�1eSkg�ʧ���K*᛾�;x�oiݪ����n�Ա� u�OL�M �띈
9���L�ą�AQ��%�L*�9�t��N�Ť���i~���������C�:�Veo�����K��#��pr8�Q���T��`����Ja2�߯�h�֘N�(���8��|�Q�(i��s#�r�v\��=�+	H"|O+����y���ێ�_�s�qb�Xc�i�'�RH�R'o�nf}$50��{�V�W�!U��l�w���tO[�1�K�=���M��C��*V(g�n:[rv�Kw��4j�L��[�-����$R�w��;�d6Oԭ����� �t�I��Ԭy-R[&�ϛ�Cvga�h�[��C�4���X�<���ؚ�2\��2g2m;!j����m���	GFFYԲ3����#U�3�B���ɊiP��s��k�w^�l��X(���ź�2��<K��
;c�w�1�Uo:�*��Kdp����*^�涽���"�5�[�>� $#�0�z��:z���ud%=pƎ�*��ME�p�`��WC����@z!d��^��"�d3�8_�{�a�Q����:���o�A[nהg�W}uG��;�\!����VJg�%��s !��PPC�ע�����Y�su�7�,���Aȋ������o�m�w*�{A�hG����5�m�����"fJ1�P��fSM�Ʉ��ZT��)�`�:��N>ד���P��%�U�2>�T��'�B i���i4�nn��|h�܋�\5ҫ�5�9��M1��~%�,E��xC̀8�Fʹ]�z���w}֗41��a�;�L�#���+"�G�q��9 SmQ�3�?���ko	[)Z'�;~+��w�j	� Y�}k8����!.���\ UIU��&l���Jl����.6R┻x��#D �w�h�*A�#�)SrŔ�1d�J�� SŹv6!f��eWm܈H]��1���"�2"6kW���ڱ�;#�U���j+y�@�r�r��wx]L?���=��
���~Z�E���&�3��C?�!���Z�1n;�]ԧX��m��B���h��t�I˛���$�,�����ۋ��:𲭯,�����\�� �N�-�4�<'P\����=�WY5�$�F& �8�/�X�kn!�^1Y�SmRe���wZԳw��1�ߧ�T[�2�s;�-��L+LȲ��1�b�iV6���������)��DI݂�<N��f�~��p,uMqJ��
�Q1ߏ�M��Ȉn����ڭ
e�ڨ��%+	EUh��sѴy;�i��!�e5���� �F�7�?�����W�a ����[;JQה�tN;���eձ$Ys�����|�R�=�'m!s�e����F����qm6���nO�hD�"]�ҧ%/&�,~ނ���Y{C���1���\�~�=-O��.���M"��ƍ&����#
�K���yE߿Z)�u/�ֻ~���!�i?G�k��-��*��[��d(CK�2q�n6 �W	>��·%@Q�@�[�pY!�2Q} GY��n�ˈ�fQ��_b	s" ��L�!�y��Rh��j�Ud�X��`z�署�њ�Ӝuᤩ�x���D�����L�@̬BA������d�{�:<~�TT_`�OZ��gi�wWy�ǲ�L����V�1t�)����H
"��}�v3���M���lޒV�w�<
�q}ͯ*)��l�ej���_����x�rFw]���X���Ǹ宀,��$ئ|Re�+sO�p��-.�(u,�íS��	P8�0ᆝ�S�M^���M�:q�_��y/�����-F��$Ϟf7�������΂ q8p[`�x�*T �� RIL�#����:�����@�P��>b�zt���:Ԥ(C��5(0���H �	B<L�Ȝ��h�m�F��k-���H�)	R��\�����G�xQ�rrSuLYG{D��N�����<9������2�wϙ��������ݣ"�	�%;�k��X0�@�_0��1�:�Z4���d�;RF^�;�c���I������6� 3
��fL�� �0����������yK�����{��mQ��n��~޿�������j�B��;���4㏫T�:.&P9UY��O�suok1&Nj<e&vJH��p�Ou��*�}C-�o��>��*D����T�\��w�	ˉ�P�o3������t���Ds�څ�	�P�!�U��xݥ6V��
�������3�l�.H8��<�fF��[��ǆ0��WN�ׂ��T�$(�Q\�MÈI�c��(���\��� �إ*)��"6=�>�5C�<���H|C�<��8�!���0{�gX{�^�ss.�`�au%��;�%�)�W4��%[4I��mw,�Z���W���������ǘ	��{����q/T.#u���p4l�pl�J�ࢵ��8��n�� ��cWz�_mJ�y�~S��5�$�m������6��@���d%�v��So��0�|��ʄK(mq@�A�o4�ʉ�Dk_P�nŲ�0l+rj���i}0)�R�h�5���_�͗S_6Y���n<
�5�z+񓼚����
����#9Y�w3�X���ҩ
'�������Db�
,DQb����j��/�'0����ekp�A����z�Y�8Q��ӫ����3��ĉ�1��J��N+��n�hBC��i�����	�^[�]5*���ʢ+Oz��׭H�ah���Q�\/$�f�
�6�GZ���b��d�c֚��#}z^},�u��KiDO;��-U�4噜�q)�Wƒ�4��@ě��Y&7�s���
�+�%��S�
��*I�ҩ�;̌���gGˌ�!��z�k����|�[�h���J�Y�N�܉���	��3��<)�� �\£/6`�\ܐ����aYq��b�\Lb�&���<�H��5v��h����r��#��H���&�?���6�
m���띎`~6*F���y8����aIO{���Ҡ�]�/�̘��=�f�F-��	�+��.���ޥ����$M�+'|��a��-�Y����D�}�i�g�b!R��&����*����?�@����A�z��+�(��g��_�V�\q��(�_\`� ��>���/�6o��e�O�p"���"�_���Y����������N%f�p7Q�,;���y� �<yb3���:���#-���T��H��UL����e9�@�HVg���!�{�	���T�'ۅ�$H�"\c����~�[��NCv�:�'�Ǘ��>��ᤛ�I�;�;Hm��Pv��\���Q���:n��NOC��(o�O�Mb$7�2��^ȯy'�������b�t�na-���ë��ϭD���VA)F
�3��@��:E�ąA��J)�ǉ�����9/��s�BG�`GK�֟r����7�=e�<]{҄��3���y�k��$�Ò��(S<��7� ;�k�V�h8(D`���x�E<)�v:H�-����%ͧEDd�NQM�X�sA���wA|���� ���]��:�Jj�ݞ\P��"�1�)̠X�Pnr��Z�H�ѱ��1���GE����'����i>����:�y�<��Z4��Mw��nwەN��D*��;P�v�!�Ǟ:֢���e���M��c���R	D�0;UI���H�6v������^8��V�y�G[�6v���d���Z�(�i�?�K�I�	��/�tj�Gc��dC>w���L*�0	]���/L#_ZH������h��܏Xy��bEA4���㇢B��to>س��h+@M�u i4Q=6�.�ʣ����/�@���l��}�^+���v&��c��F:Ҧ���'�Z$P����'�������I��L��B�L�`fB�M�&�%aLm�,�us��v�6�X�����A�kNZ�,P�N��!eY(&W2!ۚ��q��H�/�O��C�=�Q?�\�)B����w`��S�:�u�� �0�s�mv�V������#K�H6m�y��#XE������U���[�a���b-�i#��U%��ٍ��n�5P�/�hdn�>�"�&�6����N`L�ع��K<�#�*��?v#_m x'd ��t8K��q�D���N��q!C�q=�B�� �$�����o9��d�6u9��=�*�	��e��/�#�x��X�
��!%��de��w��rt��,���<1P��-V&GӖ����X���H��DȢ�dDχy1��$�7����%�G�퇽Gɋ�1�>Y&/�D�n��U#���X;K�)��u��m����&����Č�!<H�;J(d�h���~��cD$�� �
[��U_޿����pWޑ�`r�f��'&�����T���i�t�ƅ�-���гە��š�y���<^����U�>�s�g���uU)D� t��J���zU�N�C��4��Tk��&]c����L,,`��ڕ�U\�9��%� !�A1�2%|���%c
4~R�\^<��p �A�u����c�G*��!����/�f���!��s�.6�A���Z��V�I��qm�xD��q�#%�	��%N�Q�Z�Qla#����~w�*�R��$"�Vb2�*��2RiD'_e�3t$���Kd���5]�ES��nP��BL�&G�)��/�Q*i��x�����D�ID�L�댃16�v����jVы��b5+��Ib�C~� �6�;�@�R���(m!�jF\t��vQa-�)��x�|���6�=$H�ѰS��\�ZV��T�L��	����bȄ��*��Qo[�V��@$č9�$I4&5�Ke��l)�;�� ���i�����B	��3�\K�%N���9u�JXFvhA�����d1ID%��ϰ������PH�'}�ܦ�w�D]ۜ�����39"����&0�@�M ���N�Q�h�hٙ�FA]���3�lW�>��x�2���i)��4�C�+�d��'��*�p6�޴����w%	�P��c�i��U㟅�+��rA�Ce@�`N8lE&��ʓ0O+ !
C����p��	c4�/}U2ԼEoGղ��5\�� �c1B1�#��6�W�l��!�2j ��Pʢ�v[9���$�����]������5�Bd>tP���tD�zgɠh�՘wϠ<5t�а{J*�0}m0���5(z�B��8�||@��!�V@�|�%H�/ul��s,���^]� �T�	 ����Ƥ�a^.C��[���σ	� {�AE*
�"�J�������3�ѐ�`��b�����5[i���A[�L��f���ݾn�x[M�uVr�����JT(Fce4#�PY_��@�?���#�$j?i� �#ޓ��H��TbĈW�zo�	�P��
�Q
��juvn�J+m��]��T��ݏ`w��C��`��^eCh���Z�k��mn`D+�8�i� �iz��Qgy�=��@���6;])ڍ�l��Iq�T�E/p�i���.�
S���Ƈ���!!��Z`v�NR]0K@: ����? �4���'U
�-��dna7��Ԣk�$�)H�F�n��0>� ��>���������6KX��7Ju�&�DЖ�cD.6X͈�ɀ�Gѿ*̅1���n�窵ڐ����+?/�ތ�>d�IkF�f�!�;d'z���7e��B�>���w�ᡠ0�wo�����0���9������yB X�r� �B�p E�����\f�M���)�! LD�t���BÙ���9_�P������	0)�"sΝD%�K_�ȻYĹY�x�\�0���$��%��`Cy�L'i�<Nfa@fO[~�����I���P��OE
AF@�I�݅� �����з��N%fS(�Yf}\��$�� ��7���*�����K� �!�B�6<����o�9��9�(H(# ) ��4ת�A�DC�HՀ�3Kk� �s$1
b"B��ID�x3���y�t'@7�u]���Oj�.;K% ����(1�R�[�e2�Cԋ\��8�[��So'"3�0�Q�S�vn��6�@�(#�cn�������2̵=�,9��L3�-Zߝ�pDa�"��hXz���D^HR�K#l�nDl8����k�R�hfC$��i��0KNOOz=ΜSf��7��D���BR�hn$<��Р#��I����8�4��Sݸ�s���=�$XHD���ϸ��宠�c�6�Cl�*D�ȭ"+h�rb�:����@0� �꘹�!+i���ea���AG��Av��\��!��,���%3;v�o����7 ��������e^��7J	q�g�62_=K"č�(
�)�|q���b&��bhIu0V�4��,@-S$����a���wa�&�(H�3�P���2\6�W*1>��{���[������1\�2���}ϫb�.&�7������栜A9�9�vU�����e����(���Ѥ6dHS�g�R����tgJ��sЈxL����0T�%QPEd�1��p�����(D(��O��	)�܉�*��E�������n��V��yx�%����@r��*�Q�8
&�m�M�}}w��AѺT�"��F��䊒�ߖ�Cj��Š&@v��rҎ&�1 
�#C�'�A��0V!�!QR���v����.�U�nN�\���THjA�h��*�۴��˩�O-�@��)j^�ıęC�K�w��Q<�a_�p=^�
�e(Mj*-�P\�X3�YD.�����̥��tĈP��t�l��HL���*�i0!�I0����gI1 d����~��� � ������ RJW�y�t	��C)X�	'��L�Y]=�J9H1ږ,��AV�ai�5�
��L� L��C9�t�`�P�a���B��9.a��'�pn���e�5ѻ����j�m]�,����`�0y�G��#�u� �`$�Bhj���Fs2�2��qVAj���*$�4�>����+���J,���E�e�����l�%S��R/;�8�~`�/B܍b ^-���.c�+�Z7�h���guVXq�k��ى`��3c�Y��l�y�DH,�Z,V
7w��;f8֕s)M(M���;2��
�(���6;u0CwY�����F�g6������d	mFydHe����*�A��v���(���Ee���l�2!T��<0�,�*6���F�3��T֏؂��l�!���:CB#Y�3�t8(s�1h'hg���$�z����i�-Ee�E��`3؋G����<��؄�uUV&2m2F�jD�}��,J�l`:d0[M�5`gu��Qt�;�TH���^�o!��il�
6����bqF%�F�i(8m Jsa7�d�N�\"�ʱd
	P(�!S�rG�q5�N�B�������e�{ǉ�ȹ�ˎڶFd�!���&��hv��=xUj\.β�;/H{FB�%Ⱦ��ڵk{)W�1a�A1��1�7Pll��7&�(�)�����p�Xz�X]V���"�5AĈ6L��ı��ώ��0� �:�YRKF ��ʎ���j�BE�2Щ�Z�FZm�'Ԓɋ��9kF�eȒ	�˻�n�#�D*ʢ�QUtQ(�ڌu�Ll�)s�wϻ�$�]~�Σ�81;��(O|��`���=��:�Ā��5U	�P���v�P�Oip�Cr�{�Q�i�!6$7�E�<h<3�.� ��4���c2��K�T�;���N�Y�]�߸�J�mMx���α�D BD�H@��]z��3(٩�!$9���)���ێ�I����[d��FT���1�.q��)��e�Z�P���*i��ȥp�
̓مMn'C5�:�~1骣�ڷc7sU���`D	PEZm"	T��і2ݣ5.Ɉ�-��(*�R$tƤ��)����[E�T�^wL��VՇ#J����0<�0 L�$�S���up�^9T &[t)��CB� �'�j`�!<ea��� O)cwi��������5�#���B�L"���Sy�(
�Z 4��`tP��"Tj�\G���,����$h5�Ԁ��2�2m*�E\m9���p��xt�B$RJb���Y!q4�[9��2X����-��VYkE���p�3V���#p.��kjI33�B���`�}s���Zॸ�i���j�Y���ʆ\�3|QH]~�3�Gg2��7!�% ub� �Z������7��n�n�c�߃�+J&�Y�x���"�0��F,#9��9$�^Q̼��i� �eM�P��F�ג��+R�B��w��2c�s��G#����S4�aQ4
D���k���>�a�J�q�z�t�x�ѕ��Ey8Ya��IԬ�ҹw 0�$>��/�ǬS�`^t,��4m���	C%��b�((��,��^4:�_u(�5�Ȭ7�w]���uac���2ϫ�������i��b����x3A~�&Gp�R��NWr[���ʥ��Lʘ�V��Ls^Ǻ]j1u����}�"Q�!�=�ج���G��Ѡ�Iiu$?�âD�Y�!��x7<�˯�o�8���hi�%ރ@!���_��>Kĥ ���� xOB�E��'���}�قD0� a�2B����y' �W=�޷�IO�s�=> �3�>�%�d���K��*�*�ȂH��!�D@����8��0>���5P_�A�ÍEXDkX����R�C��ؔ5�j?���(P� �4����P�Fp�(k1g7�<����ܑN$1�s�