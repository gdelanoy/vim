Vim�UnDo� s�$�	�rq���ݏRQ'[���w���O	��X   9   *[ -z "${TMUX}" ] && byobu -S /tmp/git-maj]   ,   *      4       4   4   4    `Rb�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `RV     �   7   9          # LE SCRIPT PROPREMENT DIT : �   0   2          # �   &   (          # �   %   '          # �      !          # �                # �                # �                # �                # 5�_�                    ;        ����                                                                                                                                                                                                                                                                                                                                                             `RV!     �   :   ;          clear5�_�                    ;        ����                                                                                                                                                                                                                                                                                                                                                             `RV!     �   :   ;          e_header git-maj.sh5�_�                    ;        ����                                                                                                                                                                                                                                                                                                                                                             `RV%     �   :   H   <       5�_�                    ;        ����                                                                                                                                                                                                                                                                                                                                                             `RV+     �   :   <   H       5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                             `RVA     �   *   +          set -o errexit5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                             `RVA     �   *   +          set -o nounset5�_�      	              +        ����                                                                                                                                                                                                                                                                                                                                                             `RVB     �   *   +          #5�_�      
           	   +        ����                                                                                                                                                                                                                                                                                                                                                             `RVB     �   *   +          # VARIABLES :5�_�   	              
   +        ����                                                                                                                                                                                                                                                                                                                                                             `RVB     �   *   +          #5�_�   
                 +        ����                                                                                                                                                                                                                                                                                                                                                             `RVB     �   *   +          #Des Couleurs :5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             `RVC     �   *   +          #5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             `RVD     �   *   +          1source /home/$USER/.shells/scripts/couleurs.shell5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             `RVD     �   *   +          #5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             `RVD     �   *   +          # FONCTIONS :5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             `RVD     �   *   +          #5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             `RVD     �   *   +          8# source /home/guillaume/.shells/scripts/functions.shell5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             `RVE     �   *   +          #5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             `RVE     �   *   +          # LE SCRIPT PROPREMENT DIT :5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             `RVI     �   *   +          #5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             `RVQ     �   ,   .   9      #byobu new-window -n 'blacklist-ADD'5�_�                    .       ����                                                                                                                                                                                                                                                                                                                                                             `RVb     �   -   /   9      sleep 25�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                             `RVp    �         9      6# Utilité: Ce script sert à faire pousser des fleurs5�_�                    /   &    ����                                                                                                                                                                                                                                                                                                                                                             `RV�     �   .   0   9      &byobu-tmux send-keys 'sudo su -' 'C-m'5�_�                    /   '    ����                                                                                                                                                                                                                                                                                                                                                             `RV�     �   .   /          (byobu-tmux send-keys 'sudo su -' 'C-m'dd5�_�                    /       ����                                                                                                                                                                                                                                                                                                                                                             `RV�     �   .   /          sleep 15�_�                    /       ����                                                                                                                                                                                                                                                                                                                                                             `RV�     �   .   0   7      -byobu-tmux send-keys 'cd scripts/hosts' 'C-m'5�_�                    /   "    ����                                                                                                                                                                                                                                                                                                                                                             `RV�     �   .   0   7      7byobu-tmux send-keys 'cd ~/.shellesscripts/hosts' 'C-m'5�_�                    /   "    ����                                                                                                                                                                                                                                                                                                                                                             `RV�     �   .   0   7      6byobu-tmux send-keys 'cd ~/.shellsscripts/hosts' 'C-m'5�_�                    0   1    ����                                                                                                                                                                                                                                                                                                                                                             `RV�     �   /   1   7      8byobu-tmux send-keys './add-blacklist-to-hosts.sh' 'C-m'5�_�                     1       ����                                                                                                                                                                                                                                                                                                                                                             `RV�     �   0   2   7      sleep 25�_�      !               1       ����                                                                                                                                                                                                                                                                                                                                                             `RW     �   0   5   7      wait5�_�       "           !   2        ����                                                                                                                                                                                                                                                                                                                                                             `RW     �   2   5   :    �   2   3   :    5�_�   !   #           "   2        ����                                                                                                                                                                                                                                                                                                                                                             `RW
     �   1   3   <       5�_�   "   $           #   2        ����                                                                                                                                                                                                                                                                                                                                                             `RW     �   1   2           5�_�   #   %           $   2       ����                                                                                                                                                                                                                                                                                                                                                             `RW     �   1   3   ;      )byobu-tmux send-keys 'cd ~/.shells' 'C-m'5�_�   $   &           %   4        ����                                                                                                                                                                                                                                                                                                                                                             `RW     �   3   5   ;       5�_�   %   '           &   5        ����                                                                                                                                                                                                                                                                                                                                                             `RW     �   3   5   ;      wait    �   4   6   ;       5�_�   &   (           '   7        ����                                                                                                                                                                                                                                                                                                                                                             `RW"     �   6   8   :          exit�   6   8   :       5�_�   '   )           (   9        ����                                                                                                                                                                                                                                                                                                                                                             `RW$    �   7                   �   8               5�_�   (   *           )   ,        ����                                                                                                                                                                                                                                                                                                                                                             `Ra    �   +   -   8      byobu -S /tmp/git-maj5�_�   )   +           *   +        ����                                                                                                                                                                                                                                                                                                                                                             `Rb�     �   *   -   8       5�_�   *   ,           +   ,        ����                                                                                                                                                                                                                                                                                                                                                             `Rb�     �   +   -   9       5�_�   +   -           ,   ,       ����                                                                                                                                                                                                                                                                                                                                                             `Rb�     �   +   -   9      []5�_�   ,   .           -   ,       ����                                                                                                                                                                                                                                                                                                                                                             `Rb�     �   +   -   9      
[ -z "${}]5�_�   -   /           .   ,   '    ����                                                                                                                                                                                                                                                                                                                                                             `Rb�     �   +   -   9      ([ -z "${TMUX}" ] && echo "not in tmux"}]5�_�   .   0           /   ,   &    ����                                                                                                                                                                                                                                                                                                                                                             `Rb�     �   +   -   9      '[ -z "${TMUX}" ] && echo "not in tmux"]5�_�   /   1           0   ,       ����                                                                                                                                                                                                                                                                                                                                                             `Rb�     �   +   -   9      [ -z "${TMUX}" ] &&    # byobu -S /tmp/git-maj�   +   -   9      [ -z "${TMUX}" ] && echo "not]5�_�   0   2           1   ,   )    ����                                                                                                                                                                                                                                                                                                                                                             `Rb�     �   +   -   8      )[ -z "${TMUX}" ] && byobu -S /tmp/git-maj5�_�   1   3           2   ,   *    ����                                                                                                                                                                                                                                                                                                                                                             `Rb�     �   +   -   8      +[ -z "${TMUX}" ] && byobu -S /tmp/git-maj ]5�_�   2   4           3   ,   *    ����                                                                                                                                                                                                                                                                                                                                                             `Rb�     �   +   .   8      *[ -z "${TMUX}" ] && byobu -S /tmp/git-maj]5�_�   3               4   ,   *    ����                                                                                                                                                                                                                                                                                                                                                             `Rb�    �   +   -   9      *[ -z "${TMUX}" ] && byobu -S /tmp/git-maj]5��