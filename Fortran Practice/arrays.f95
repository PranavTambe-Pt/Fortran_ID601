program cat
    implicit none
    integer,dimension(1:5)::a1
    real ,dimension(1:50)::r1
    integer,dimension(5,5)::a2d1
    integer,dimension(3)::a4
    integer,dimension(:),allocatable::a5
    !  array initialization (/  /)
    integer::n=1
     integer,dimension(1:5)::a6=(/ 1,23,3234,232,123 /)
     a1(1)=5
     print *,a6(2)
     do n=1,5
        a1(n)=n
     end do
     do n=1,5
        print "(i1)",a1(n)
     end do
     ! size == shape
     print *,shape(a4)
end program cat