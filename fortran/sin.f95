program mission_cat
    implicit none
    integer::i,k=1
  real::x,temp,ans=0,fact=1
  x=(3.14)/2
  ans=x
! print*,ans
    do i=1,20
        k=k+2
        fact=fact*(k)*(k-1)
        temp=(((-1)**i)*(x**k))/(fact)
       ans=ans+temp
    ! print*,ans
    end do
    print*,ans
    print*,abs(1-ans)
end program mission_cat