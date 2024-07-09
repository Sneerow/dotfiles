# function _nvm_use_on_pwd_change --argument-names _ op --on-variable nvm_use_on_pwd_change
#     if test "$op" = ERASE
#         functions --erase _nvm_pwd_change
#     else
#         function _nvm_pwd_change --on-variable PWD
#             nvm use --silent 2>/dev/null
#         end
#     end
# end
function __nvm_auto --on-variable PWD
  nvm use --silent 2>/dev/null
end
__nvm_auto
