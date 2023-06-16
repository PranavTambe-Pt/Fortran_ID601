program cat
    implicit NONE
    ! integer::stock(5)
    ! integer::i,j,k
    ! integer,dimension(10)::stock
    ! integer, dimension(2,3)::array_2d
    integer,allocatable,dimension(:)::x
    integer::n,i

    ! do i=1,10,1
    !     read*,stock(i)
    ! end do
    ! read*,(stock(i),i=1,10,1)
 
    ! do i=1,10,1
    !    print*,stock(i)
    ! end do
    ! print*,(stock(i),i=1,10,1)

    ! do j=1,2,1
    !     do k=1,3,1
    !         read*,array_2d(j,k)
    !     end do
    ! end do
    !  do j=1,2,1
    !     do k=1,3,1
    !         print*,array_2d(j,k)
    !     end do
    ! end do
    print*,"Enter the dimension of the array"
    read*, n
    allocate(x(n))
    read*,(x(i),i=1,n,1)
    print*,(x(i),i=1,n,1)
 


end program cat