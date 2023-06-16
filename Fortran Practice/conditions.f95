program cat
    implicit none
    !  == /= < > <= >=
    ! .not. .and. .not. .true. .false.
    integer ::age=15
    if((age>=5).and.(age<=6)) then
        print*,"Kindergarden"
    else if ((age>=7).and.(age<=13))then
        print *,"Midddle School"
    else if ((age>=14).and. (age<=20)) then
        print *,"High School"
    else 
        print*,"stay home"
    end if
    print*,5/=9
    print*,.true. .or. .false.
    print*, .false.
    
    
end program cat