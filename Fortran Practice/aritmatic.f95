  ! ----- MATH OPERATORS -----
  program cat
  real :: float_num = 1.111111111111111
  real :: float_num2 = 1.111111111111111
  double precision :: dbl_num = 1.1111111111111111d+0
  double precision :: dbl_num2 = 1.1111111111111111d+0
  real :: rand(1)
  integer :: low = 1, high = 10
!  +  - * / %  **
!   5 % 4 == mod(5,4)
  print *,float_num+float_num2
  end program cat