program cat
    implicit none
    !  == /= < > <= >=
    ! .not. .and. .not. .true. .false.
   integer :: age=18
   select case (age)
   case (5)
    print*,"a"
   case(6:13)
    print *,"b"
   case(14,15,16,17)
    print*,"c"
   case default
    print *,"d"
   end select
    
end program cat