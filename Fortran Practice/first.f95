program fortrantut
    implicit NONE
    character*20::name
    real ,parameter :: PI=3.14
    real :: r_num=0.0
    double precision :: dbl_na=1.11111111
    integer :: i=1
    logical :: c=.false.
    character (len=20)::month
    complex::c_num=(2.3,45.6)
    ! huge and tiny keyword to get the biggest and samllest value of a data type
    print *,"Biggest Real", huge(r_num)
    print *,"Biggest Integer", huge(i)
    print *,"Smallest Real", tiny(r_num)

    ! To print how many bytes does a datas type consumes use kind keyword
    print *,"integer",kind(i)
    print *,"Real",kind(c_num)
    print *,"Double",kind(dbl_na)


    ! print *,"What is your name?" 
    ! read *, name 
    ! print *,"Hello ",name


end program fortrantut
