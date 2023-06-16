program mission_cat
    implicit none
    integer::N=1e5,i
    real::r,theta,x,y,l,ans,a=1e5,accepted=0,pi
    pi=acos(-1.0)
    l=1/(sqrt(2.0))
    call random_seed()
    do i=1,N
        call random_number(r)
        r=sqrt(r)
        call random_number(theta)
        theta=(theta*pi*2) 
        x=r*cos(theta)
        y=r*sin(theta)
        if(abs(x)<=l .and. abs(y)<=l)then
        accepted=accepted+1
        end if
    end do
    ans=(a*2)/(accepted)
    print*,ans
end program mission_cat