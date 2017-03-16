subroutine checkForReal(cArray,oArray,nReal)
    implicit none

    character*10, dimension(20), intent(in)::cArray

    integer, dimension(20), intent(out)::oArray
    integer, intent(out)::nReal

    integer::index = 1
    integer::index2 = 1
    character temp*10

    nReal = 0

    do index = 1,20,1
        oArray(index) = -999
    end do

    do index = 1,20,1
        temp = cArray(index)
        do index2 = 1,10,1
            if(temp(index2:index2) == ".") then
                nReal = nReal + 1
                goto 107
            end if
        end do
        read(temp(1:10),'(i10)') oArray(index)
        107 continue
    end do
end subroutine
