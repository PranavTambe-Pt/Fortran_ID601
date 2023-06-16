program cat
    real :: i(1),h=10,l=1
    call random_number(i)
    print *, l+floor((h-l+1)*i)
end program cat