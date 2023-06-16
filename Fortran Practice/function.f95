program mission_cat
    implicit none
    real::number,n,square_root
    read*,number
    n=square_root(number)
    print*,n
end program mission_cat

real function square_root(num)
implicit none
real,intent(in)::num
square_root=sqrt(num)
end function square_root