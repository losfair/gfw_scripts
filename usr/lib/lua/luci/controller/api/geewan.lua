LuaQ               !      A@  ��  ��@@�$     $@  @ $�  � $�  � $    $@ @ $� � $� d  G� d@ G  d� G@ d� G� d  G� d@ G   �       module    luci.controller.api.geewan    package    seeall    index    get_shadowsocks    set_shadowsocks    set_shadowsocks_switch    shutdown_shadowsocks    start_shadowsocks    get_shadowsocks_status    geewan_upgrade    cfg_import 	   get_upnp    set_upnp_switch    get_ss_adv_cfg    set_ss_adv_cfg                 �      A@  ��  ��E  \�� 	@��E� �� \� 	@��	@B�	�B�	@C�	�C�E  �  �@  �  �@ �  ܀� � A� � AA \@�E  � ��@  �  AA �@�ŀ A ܀ � A� � A� \@�E  � ��@  �  A �@�ŀ  ܀ � A� � AA \@�E  � ��@  �  A� �@�ŀ � ܀ � A� � A� \@�E  � ��@  �  A �@�ŀ  ܀ � A� � AA \@�E  � ��@  �  A� �@�ŀ � ܀ � A� � A� \@�E  � ��@  �  A �@�ŀ  ܀ � A� � AA \@�E  � ��@  �  A� �@���  ܀ � AA � A� \@�E  � ��@  �  A� �@�ŀ � ܀ � A� � A	 \@�E  � ��@  �  AA	 �@�ŀ A	 ܀ � A� � A�	 \@�E  � ��@  �  A�	 �@�ŀ �	 ܀ � A� � A
 \@�E  � ��@  �  AA
 �@�ŀ A
 ܀ � A� � A�
 \@�E  � ��@  �  A�
 �@���  ܀ � AA � A� \@�E  � ��@  �  AA �@�ŀ A ܀ � A� � A� \@�E  � ��@  �  A� �@�ŀ � ܀ � A� � A \@� � 1      node    api    geewan    target    firstchild    title    _        order 	x      sysauth    admin    sysauth_authenticator 	   jsonauth    index    entry    set_shadowsocks_switch    call 	�      get_shadowsocks 	�      shutdown_shadowsocks 	�      start_shadowsocks 	�      set_shadowsocks 	�      get_shadowsocks_status 	�      shadowsocks 	   template    admin_web/network/shadowsocks    shadowsocks 配置 	�      geewan_upgrade 	      cfg_import 	       set_upnp_switch 	!   	   get_upnp 	"      ss_adv    admin_web/network/ss_adv    get_ss_adv_cfg 	#      set_ss_adv_cfg 	$                          <      R      A@  � A�  ��  ��  
  E  � \� FA�\�� ���� A� � ���ˁ�A� �� �B ܁����� �� � ��K���� � A� \������ A� � ���˂�A� �� �C ܂����� �� � ��K���� � A� \��� �CD��D�� �� @  �@@�	��	���	�	A��	�	��	A��	��	A��@�� �CD��E� �� �  	���	� ��CF � �C  �       require 
   luci.http 	           luci.model.uci    cursor    get    shadowsocks    enable    server    server_port 	   password    timeout    method    defaultroute 
   dnsserver    luci    util    exec    /lib/gw-shadowsocks.sh status    enctype    status    get_api_error    code    msg    write_json                     >   j      �      A@  � E�  F�� F � ��  �@A��A�� �  \�  ��  ��@� Aŀ  �@�ƀ� �  ��  ŀ  �@�ƀ�A ܀ �  AA�AA� � E�  FA�F���� \� ��  �AA��A� �� Ł  �A�Ɓ�B ܁ � A� �  �   ܂ C��� K�D�� � A � \C K�D�� � A � \C K�D�� � A� �� \C K�D�� � A � \C K�D�� � AD ��\C K�D�� � AD ��\C K�D�� � AD ��\C K�E�� \C�K�E�� \C�KF�� \C�K�E�� \C�KCF�� � A� \��W��@ � � ���  ��@�CG�� �C �C  �@�E�  F��F��� \� @����B��F�H � \C  � #      require 
   luci.http    luci    util    trim    http 
   formvalue 	   password    server    defaultroute    port    enctype    timeout 
   dnsserver 	           luci.model.uci    cursor    set    shadowsocks    server_port    method    save    load    commit    get    enable    1 	      exec #   /etc/init.d/gw-shadowsocks restart    get_api_error    code    msg    write_json                     l   �      >      A@  � E�  F�� F � ��  �@A��A�� �  \�  �  �@ 
  E  �� \� F��\�� ��B AB �� ���W@ ��ˁ�AB �B ��  � �A ���AB �A���AB �A��A�AB �A�Ł  ���Ɓ�� �A  B  �@�Ł  �����  ܁ � �	���	� ���E   �A  �       require 
   luci.http    luci    util    trim    http 
   formvalue    enable 	           luci.model.uci    cursor    get    shadowsocks    set    save    commit    load    exec #   /etc/init.d/gw-shadowsocks restart    get_api_error    code    msg    write_json                     �   �            A@  � E�  F�� F � �@ \@ F�A �@  � \@  � 	      require 
   luci.http    luci    util    exec     /etc/init.d/gw-shadowsocks stop    write_json    code 	                        �   �            A@  � E�  F�� F � �@ \@ F�A �@  � \@  � 	      require 
   luci.http    luci    util    exec #   /etc/init.d/gw-shadowsocks restart    write_json    code 	                        �   �            A@  � J   ��  ��  � ��@�� ܀ � �I����  @B@��  AAAA� � �  I���I@C��C @� A  �       require 
   luci.http        luci    util    exec    /lib/gw-shadowsocks.sh status    status    no    running    lua /lib/ss-test.lua    accel    code 	       write_json                     �   �     3   E   F@� \�� @ �@ � � �
���  
��   ��@�  �@ �   �@A�� � ����   ���   � �  E  FA��@��   � �  E  F���@��   � �  E  F���@�� C܀ ���@ �ˀC�@ �   ��� AA �  �@  �       nixio    fork 	       chdir    /    open 
   /dev/null    w+    dup    stderr    stdout    stdin    fileno 	      close    exec    /bin/sh    -c                     �   �      f      A@  � E   ��  \@ A�  �  �@ $       �C��� ��A�B�A    �   �A �A Ł ���Ɓ�� ܁ �A    �� ��  C��Ł �A�Ɓ�� JB  IÅ�A� � D�
�� ܁� �  ��Ł �A�Ɓ�� J�  Ią�� ��D�E� �� �BDI����A�Ł ����A�  �A ��Ł ����A�  �A Ł ����A� ��A Ł �A�Ɓ�� J�  IąI�E��A��� F@�Ł �A�Ɓ�� JB  I����A��A Ɓ�
� @�"B� ���A  �       require    luci.fs    luci.template    tar -xzC/ >/dev/null 2>&1    /tmp/firmware.img    /tmp/real_fw.img    luci    http    setfilehandler 	   tonumber 
   formvalue    step 	   	   template    render     admin_web/system/geewan_upgrade 	      size    nixio    fs    stat    unlink    image_invalid 	      os    execute -   /usr/sbin/hwf-at 3 '/sbin/sysupgrade2 -n %q'        �   �        @  �@ J  �   � � b@ P@���   � �@  �@ J � � � b@� P@ �� W  �  �@   �    �    	       os    execute ;   /usr/bin/gpg --ignore-time-conflict -d %s > %q 2>/dev/null -   /sbin/image-check %s 1>/dev/null 2>/dev/null                     �   �       �   �@  ��   @�� @ @���ŀ  ���� A ܀��   ��Z   � ��   �@�@� �@��   � ��   ˀ��@  �       name    image    io    open    w    write    close                                 �   :     �      A@  � C � ��@ �     � �@ ��  �  �@�ƀ�� ܀ �@    ��  ��  B���  �@�ƀ�� JA  I�@� � C��Z@  ���  �@�ƀ�� JA  IÃ�@� ��   A ܀ ��@� � dA    ����� �� �  ���� �D��� �ADA� �� �� �D�A �ADA� �� � E�A �ADA� �� �B CE�A �ADA� �� �� �EC    �� �A �ADA� �� � F�A �ADA� �� �B � �A �ADA� �� ��  �A �GA� �A��AGA� �A�ˁGA� �A��AGA� �A�� �����B �A � �A�Ɓ�� �A ��� �AB��B�� 
�  	Ã	ɑ�A� � %      require 
   luci.http    setfilehandler 	   tonumber    luci    http 
   formvalue    step 	   	   template    render    admin_web/network/cfg_import 	      hiwifi.json    decode    uci    cursor    set    shadowsocks    server    server_port 	   password    timeout 	X     method    defaultroute 	       enable    save    load    commit    util    exec #   /etc/init.d/gw-shadowsocks restart    admin_web/network/shadowsocks    config_invalid                �   �@  ��    �� @ @�@ ���  �   Z    ��   �   @��   � �� � ���� ��    � � ��    �       name    config     	                       !  #       E   �   \� @� ��F�@ Z   @�F�@ Z   ��F A Z   � �F@A @ �B@  B � ^   �       type    table    server    server_port 	   password    method                                 <  N     !      A@  � A�  ��  ��  
  E  � \� FA�\�� ���� A �B ����@@ �	��@��� ���A�  ܁ � �	� �	����D   �A  �       require 
   luci.http 	           luci.model.uci    cursor    get    upnpd    config    enable_upnp    enable    luci    util    get_api_error    code    msg    write_json                     P  f     >      A@  � E�  F�� F � ��  �@A��A�� �  \�  �  �@ 
  E  �� \� F��\�� ��B A� �� ���W@ ����AB �� ��  � �A �A�AB �A�ˁ�AB �A����AB �A�Ł  �����B �A  B  �@�Ł  ���Ɓ�  ܁ � �	���	� ��AF   �A  �       require 
   luci.http    luci    util    trim    http 
   formvalue    enable 	           luci.model.uci    cursor    get    upnpd    config    enable_upnp    set    save    commit    load    exec    /etc/init.d/miniupnpd restart    get_api_error    code    msg    write_json                     h  z     !      A@  � A�  ��  ��  
  E  � \� FA�\�� ���� A �B ����@@ �	��@��� ���A�  ܁ � �	� �	����D   �A  �       require 
   luci.http 	           luci.model.uci    cursor    get    shadowsocks    adv    url    urls    luci    util    get_api_error    code    msg    write_json                     |  �     K      A@  � E�  F�� F � ��  �@A��A�� �  \�  Z@    �A  �@ �  
  E  �� \� F��\�� �  �  � �B � �ÂC  @�Ɂ�� D@ ��C�!B   �B��� ��  @ B B��� B����� B����� B��  �@FAB B @B  �@��  �@�F@ � �  	���	� �BG @ B  �       require 
   luci.http    luci    util    trim    http 
   formvalue    urls     	       luci.model.uci    cursor    gmatch    ([a-z0-9][a-z0-9-%.]+)    table    insert 	   set_list    shadowsocks    adv    url    save    commit    load    exec #   /etc/init.d/gw-shadowsocks restart    get_api_error    code    msg    write_json                             